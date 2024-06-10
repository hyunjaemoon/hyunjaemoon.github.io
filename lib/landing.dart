import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:moonbook/portfolio.dart';
import 'package:synchronized/synchronized.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<LandingPage> {
  Flutter3DController controller = Flutter3DController();
  final Lock _lock = Lock();

  final double phi = 50;
  final double radius = 300;

  bool isPlaying = false;

  late Flutter3DViewer viewer;

  @override
  void initState() {
    super.initState();
    // Add your initialization code here
    viewer = Flutter3DViewer(
      src: 'assets/lowres_computer.glb',
      controller: controller,
      progressBarColor: Colors.blue,
    );
  }

  @override
  void dispose() {
    // Add your cleanup code here
    super.dispose();
  }

  Future<void> circularAnimation() async {
    await _lock.synchronized(() async {
      int i = 0;
      while (true) {
        if (isPlaying) {
          await Future.delayed(Duration(milliseconds: 20), () {
            double theta = i.toDouble();
            controller.setCameraOrbit(theta, phi, radius);
          });
          i++;
        } else {
          controller.setCameraOrbit(0, phi, radius);
          return;
        }
      }
    }, timeout: Duration(seconds: 10));
  }

  Future<void> transitionOutAnimation() async {
    int zoomInFactor = 500;
    await _lock.synchronized(() async {
      controller.setCameraOrbit(0, phi, radius);
      for (int i = 0; i < zoomInFactor; i++) {
        await Future.delayed(Duration(milliseconds: 20), () {
          double radiusInc = i.toDouble();
          controller.setCameraOrbit(0, 50, radius - radiusInc);
        });
        i++;
      }
    }, timeout: Duration(seconds: 10));
  }

  int tapCount = 0;

  @override
  Widget build(BuildContext context) {
    Widget app = Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: GestureDetector(
            onDoubleTap: () async {
              setState(() {
                isPlaying = false;
              });
              transitionOutAnimation();
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const PortfolioMainPage()),
              // );
            },
            child: viewer,
          ),
        ),
        bottomNavigationBar: FloatingActionButton(
          onPressed: () {
            setState(() {
              isPlaying = !isPlaying;
            });
            circularAnimation();
          },
          child: isPlaying
              ? const Icon(Icons.stop_circle)
              : const Icon(Icons.play_arrow),
        ));
    return app;
  }
}
