import 'package:flutter/material.dart';
import 'package:grape_fruit/constants/constants.dart';
import 'package:grape_fruit/view/screens/login_screen.dart';
import 'package:grape_fruit/view/screens/signup_screen.dart';
import 'package:grape_fruit/view/screens/terms_and_conditions_screen.dart';
import 'package:grape_fruit/view/widgets/buttons.dart';
import 'package:grape_fruit/view/widgets/dialogues.dart';

class LoginOrSignUp extends StatefulWidget {
  const LoginOrSignUp({Key? key}) : super(key: key);

  @override
  State<LoginOrSignUp> createState() => _LoginOrSignUpState();
}

class _LoginOrSignUpState extends State<LoginOrSignUp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: height * 0.6,
            child: Image(
              image: AssetImage('assets/images/login_or_signup_asset.png'),
            ),
          ),
          Container(height: height*0.20,child: Column(children: [
            LoginOrSignUpPageButton(
                height: height*0.07,
                function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                },
                width: width,
                color: Constants.orrangeColor,
                borderColor: Constants.borderColor,
                imageUrl: 'assets/images/join_community_icon.png',
                textColor: Constants.orrangeColor,
                buttonText: 'Join Community'),
            SizedBox(height: 10,),
            LoginOrSignUpPageButton(
                height: height*0.07,
                function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                },
                backgroundColor: Constants.orrangeColor,
                width: width,
                color: Constants.orrangeColor,
                borderColor: Constants.borderColor,
                imageUrl: 'assets/images/person.png',
                textColor: Colors.white,
                buttonText: 'Sign In'),
          ]),),
          Expanded(
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: width * 0.45,
                    height: height*0.07,
                    decoration: BoxDecoration(),
                    padding: const EdgeInsets.only(right: 15, bottom: 15),
                    child: Card(
                        borderOnForeground: true,
                        shadowColor: Constants.orrangeColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            side: BorderSide(color: Constants.borderColor, width: 2)),
                        elevation: 3,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              GestureDetector(
                                onTap: () async {
                                  await GeneralDialogs.showSuccessDialog(context, 'Testing');
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TermsAndConditions(),));
                                },
                                child: Text(
                                  'Login as Guest',
                                  style:
                                      TextStyle(color: Colors.red, fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/images/arrow_forward.png'),
                              )
                            ])),
                  )))
        ],
      ),
    );
  }
}
