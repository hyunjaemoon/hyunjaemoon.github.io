import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moonbook/translation_game/api_interface.dart';
import 'package:moonbook/translation_game/instructions.dart';
import 'package:moonbook/translation_game/prompt.dart';
import 'package:moonbook/utils.dart';

class TranslationGameScoreModeWidget extends StatefulWidget {
  const TranslationGameScoreModeWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TranslationGameScoreModeWidgetState createState() =>
      _TranslationGameScoreModeWidgetState();
}

class _TranslationGameScoreModeWidgetState
    extends State<TranslationGameScoreModeWidget>
    with SingleTickerProviderStateMixin {
  late Instructions _instructions;
  late Prompts _prompts;
  late TextEditingController _textController;
  late AnimationController _animationController;
  late ApiService _apiService;

  late String _primaryLanguage;
  late String _secondaryLanguage;

  String response = '';
  int score = 0;
  bool isKorean = false; // Track the current language direction
  bool isLoading = false; // Track if Gemini API Request is loading.
  Random random = Random();

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    // Start the animation after a 1-second delay
    Future.delayed(Duration(milliseconds: 500), () {
      _animationController.forward();
    });

    _apiService = ApiService();

    _instructions = isKorean ? KoreanInstructions() : EnglishInstructions();
    _prompts = isKorean ? EnglishPrompts() : KoreanPrompts();

    _primaryLanguage = isKorean ? 'Korean' : 'English';
    _secondaryLanguage = isKorean ? 'English' : 'Korean';
  }

  @override
  void dispose() {
    _textController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  Future<void> sendAIRequest() async {
    setState(() {
      isLoading = true;
    });
    try {
      final apiResponse = await _apiService.sendAIRequest(
        primaryLanguage: _primaryLanguage,
        secondaryLanguage: _secondaryLanguage,
        prompt: _instructions.prompt,
        userInput: _textController.text,
      );

      setState(() {
        response = apiResponse.response;
        if (apiResponse is GameResponse) {
          score = apiResponse.score;
        } else {
          score = 0;
        }
      });
    } catch (e) {
      setState(() {
        response = 'Error: ${e.toString()}';
        score = 0;
      });
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff0e0419),
      ),
      backgroundColor: const Color(0xff0e0419),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SlideTransition(
                position: TweenSequence<Offset>([
                  TweenSequenceItem(
                    tween: Tween<Offset>(
                      begin: Offset(screenWidth, 0),
                      end: const Offset(0.3, 0),
                    ),
                    weight: 1,
                  ),
                  TweenSequenceItem(
                    tween: Tween<Offset>(
                      begin: const Offset(0.3, 0),
                      end: const Offset(-0.3, 0),
                    ),
                    weight: 2,
                  ),
                  TweenSequenceItem(
                    tween: Tween<Offset>(
                      begin: const Offset(-0.3, 0),
                      end: Offset(-screenWidth, 0),
                    ),
                    weight: 1,
                  ),
                ]).animate(CurvedAnimation(
                  parent: _animationController,
                  curve: Curves.easeInOut,
                )),
                child: Text(
                  "Welcome to the Score Mode!",
                  style: fitTextStyle(context).apply(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
