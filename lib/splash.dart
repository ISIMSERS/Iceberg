import 'package:flutter/material.dart';
import 'package:iceberg/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
        const Duration(
          milliseconds: 3500,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AuthenticationWrapper(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/iceberg.png',
              width: 150,
              height: 150,
            ),
          ),
          const CircularProgressIndicator(
            color: Colors.cyan,
            strokeWidth: 5.0,
          ),
        ],
      ),
    );
  }
}
