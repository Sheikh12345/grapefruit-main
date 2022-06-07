import 'package:flutter/material.dart';
import 'package:grape_fruit/constants/constants.dart';
import 'package:grape_fruit/view/screens/email_verification_Screen.dart';
import 'package:grape_fruit/view/screens/signup_screen.dart';
import 'package:grape_fruit/view/widgets/buttons.dart';
import 'package:grape_fruit/view/widgets/textfields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
      child: Column(children: [
          Container(
            height: height * 0.4,
            child: Image(
              image: AssetImage('assets/images/login_asset.png'),
            ),
          ),
          Container(
            height: height * 0.4,
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  'Login',
                  style: TextStyle(color: Constants.orrangeColor, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                  child: Column(
                children: [
                  CustomTextField(width, 'Username or Email'),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(width, 'Password'),
                ],
              )),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(15),
                child: Text(
                  'Forget Password?',
                  style: TextStyle(color: Constants.redColor, fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              LoginOrSignUpPageButton(
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return VerifyEmailScreen();
                    },));
                  },
                  width: width,
                  color: Constants.orrangeColor,
                  height: height * 0.07,
                  buttonText: 'Login',
                  textColor: Colors.white,
                  borderColor: Constants.borderColor,
                  backgroundColor: Constants.orrangeColor),
            ]),
          ),
          Container(
            height: height * 0.2,
            child: Column(children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SignUpScreen();
                        },));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Constants.orrangeColor),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: socialLoginButtons(context),
              ),
            ]),
          )
      ]),
    ),
        ));
  }
}
