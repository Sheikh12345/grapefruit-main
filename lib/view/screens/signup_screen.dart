import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grape_fruit/constants/constants.dart';
import 'package:grape_fruit/view/screens/id_scanner_screen.dart';
import 'package:grape_fruit/view/screens/login_or_signup_page.dart';
import 'package:grape_fruit/view/widgets/buttons.dart';
import 'package:grape_fruit/view/widgets/textfields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkBoxValueOne=false;
  bool checkBoxValueTwo=false;
  bool checkBoxValueThree=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      width: width,
                      height: height * 0.3,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/sign_up_top_image.png'),
                      ),
                    ),
                    Positioned(
                      top:  height*0.1,
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,children: [
                          Container(child: Text('Sign Up', style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),),
                          Container(child: Text('Don\'t have an account? Create One', style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),)
                        ]),
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: CustomTextField(width, 'First Name')),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: CustomTextField(width, 'Surname')),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: CustomTextField(width, 'Email')),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: CustomTextField(width, 'Username')),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: CustomTextField(width, 'Country')),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: CustomTextField(width, 'ID/Passport Number')),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: CustomTextField(width, 'Phone Number')),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: CustomTextField(width, 'Password')),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: CustomTextField(width, 'Confirm Password')),
                SizedBox(
                  height: 10,
                ),
               Container(
                 padding: EdgeInsets.only(left: 15),
                 child: Column(children: [
                   Row(children: [Checkbox(activeColor: Constants.orrangeColor,focusColor: Constants.orrangeColor,value: checkBoxValueOne, onChanged: (value){
                     setState(() {
                       checkBoxValueOne=value!;

                     });
                   }),Container(child: Text("Terms and Conditions",style: TextStyle(color: Constants.redColor,fontSize: 14)),)],),
                   Row(children: [Checkbox(activeColor: Constants.orrangeColor,focusColor: Constants.orrangeColor,value: checkBoxValueTwo, onChanged: (value){
                     setState(() {
                       checkBoxValueTwo=value!;

                     });
                   }),Container(child: Text("Privacy Agreement",style: TextStyle(color: Constants.redColor,fontSize: 14)),)],),
                   Row(children: [Checkbox(activeColor: Constants.orrangeColor,focusColor: Constants.orrangeColor,value: checkBoxValueThree,hoverColor: Constants.orrangeColor, onChanged: (value){
                     setState(() {
                       checkBoxValueThree=value!;
                     });
                   }),Container(child: Text("Email Marketing Consent",style: TextStyle(color: Constants.redColor,fontSize: 14),),)],),
                 ],),
               ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginOrSignUpPageButton(
                        function: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => IDScannerScreen(),));
                        },
                        width: width * 0.5,
                        color: Constants.orrangeColor,
                        height: 50,
                        buttonText: 'Sign Up',
                        textColor: Colors.white,
                        borderColor: Constants.borderColor,
                        backgroundColor: Constants.orrangeColor),
                    LoginOrSignUpPageButton(
                        function: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                            return LoginOrSignUp();
                          },));
                        },
                        width: width * 0.5,
                        color: Constants.orrangeColor,
                        height: 50,
                        buttonText: 'Cancel',
                        textColor: Constants.orrangeColor,
                        borderColor:Constants.orrangeColor,
                        backgroundColor: Colors.white)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(color: Constants.orrangeColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
