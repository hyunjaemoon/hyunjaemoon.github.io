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

  @override
  void initState() {
    super.initState();
    // Add your initialization code here
    controller.setCameraOrbit(0, phi, radius);
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
        await Future.delayed(Duration(milliseconds: 20), () {
          double theta = i.toDouble();
          controller.setCameraOrbit(theta, phi, radius);
        });
        i++;
      }
    }, timeout: Duration(seconds: 10));
  }

  int tapCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: GestureDetector(
            onDoubleTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const PortfolioMainPage()),
              );
            },
            child: Flutter3DViewer(
              src: 'assets/lowres_computer.glb',
              controller: controller,
              progressBarColor: Colors.blue,
            ),
          ),
        ),
        bottomNavigationBar: FloatingActionButton(
          onPressed: () {
            circularAnimation();
          },
          child: const Icon(Icons.science),
        ));
  }
}
