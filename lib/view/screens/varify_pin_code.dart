import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:grape_fruit/view/screens/create_new_password_screen.dart';
import 'package:grape_fruit/view/widgets/buttons.dart';

import '../../constants/constants.dart';

class VerifyPinCode extends StatefulWidget {
  void Function() function;
   VerifyPinCode({required this.function,Key? key}) : super(key: key);

  @override
  State<VerifyPinCode> createState() => _VerifyPinCodeState();
}

class _VerifyPinCodeState extends State<VerifyPinCode> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Constants.randomTextColor,
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Center(
                child: Container(
                  color: Colors.white,
                  height: height * 0.4,
                  child: const Image(
                    image:
                        AssetImage('assets/images/verify_pin_code_header.png'),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  'Verify Pin Code',
                  style: TextStyle(
                      color: Constants.orrangeColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter pin code we send at your Email.\nabc@example.com',
                  style:
                      TextStyle(color: Constants.randomTextColor, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              OtpTextField(
                borderRadius: BorderRadius.circular(10),
                  fieldWidth: 60,
                  showFieldAsBox: true,
                  numberOfFields: 4,
                  showCursor: true,
                  focusedBorderColor: Constants.orrangeColor,
                  autoFocus: false,
                  onCodeChanged: (pin) {}),
              SizedBox(
                height: 20,
              ),
              LoginOrSignUpPageButton(
                  function: widget.function,
                  width: width,
                  color: Constants.orrangeColor,
                  height: 50,
                  buttonText: 'Done',
                  textColor: Colors.white,
                  borderColor: Constants.borderColor,
                  backgroundColor: Constants.orrangeColor),
              SizedBox(height: 10,),
              Container(padding: EdgeInsets.only(left: 35),alignment: Alignment.bottomLeft,child: Text('Resend Code in 00:50',style: TextStyle(color: Constants.randomTextColor),),)
            ]),
          ),
        ));
  }
}
