import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

Map<String, String> urlMap = {
  'linkedin': 'https://www.linkedin.com/in/hyunjaemoon/',
  'github': 'https://www.github.com/hyunjaemoon/',
  'license':
      'https://github.com/hyunjaemoon/hyunjaemoon.github.io/blob/main/LICENSE',
  'aosp':
      'https://android-review.googlesource.com/q/owner:hyunjaemoon@google.com',
  'resumepdf':
      'https://drive.google.com/file/d/1xtLk5Lexxq8ENxegO4JQqZm_D2rOQtu0/view',
  'linguaghost': 'https://hyunjaemoon.com/translation_game',
};

Future<void> launchUrlCheck(String urlKey) async {
  String urlValue = urlMap.putIfAbsent(urlKey, () => "");
  if (urlValue.isEmpty) {
    throw Exception('urlMap key does not exist.');
  }
  Uri url = Uri.parse(urlValue);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

TextStyle fitTextStyle(BuildContext context) {
  final size = MediaQuery.of(context).size;
  final textWidthScaleFactor = size.width / 600;
  final textHeightScaleFactor = size.height / 800;
  final textScaleFactor = textWidthScaleFactor < textHeightScaleFactor
      ? textWidthScaleFactor
      : textHeightScaleFactor;
  return TextStyle(fontSize: 24 * textScaleFactor);
}

BottomAppBar copyrightBottomAppBar(BuildContext context) {
  return BottomAppBar(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '© Hyun Jae Moon ${DateTime.now().year}',
        style: GoogleFonts.openSans(),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
