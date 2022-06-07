import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:grape_fruit/view/screens/login_or_signup_page.dart';
import 'package:grape_fruit/view/screens/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatToHome();
  }
  Future<void>_navigatToHome() async {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginOrSignUp(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/images/splashscreen.png'))),),
    );
  }
}
