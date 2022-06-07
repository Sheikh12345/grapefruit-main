import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grape_fruit/view/screens/create_new_password_screen.dart';
import 'package:grape_fruit/view/screens/varify_pin_code.dart';
import 'package:grape_fruit/view/widgets/buttons.dart';
import 'package:grape_fruit/view/widgets/textfields.dart';

import '../../constants/constants.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios,color: Constants.randomTextColor,),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/email_verification.png'),
                      )
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Verify Email Address',
                    style: TextStyle(color: Constants.orrangeColor, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Enter the email adress associated with your account',
                    style: TextStyle(color: Constants.randomTextColor, fontSize: 20),
                  ),
                ),
                SizedBox(height: 15,),
                CustomTextField(width*0.98, 'Email Address'),
                SizedBox(height: 15,),


                LoginOrSignUpPageButton(function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyPinCode(
                    function: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreatePasswordScreen(),));
                    }
                  ),));
                }, width: width, color: Constants.orrangeColor, height: 50, buttonText: 'Verify', textColor: Colors.white, borderColor: Constants.borderColor,backgroundColor: Constants.orrangeColor)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
