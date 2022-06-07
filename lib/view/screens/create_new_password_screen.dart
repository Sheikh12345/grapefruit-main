import 'package:flutter/material.dart';
import 'package:grape_fruit/view/screens/login_screen.dart';
import 'package:grape_fruit/view/widgets/textfields.dart';

import '../../constants/constants.dart';
import '../widgets/buttons.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/lock_asset.png'),
                      )
                  ),
                ),
                SizedBox(height: 30),

                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create New Password',
                    style: TextStyle(color: Constants.orrangeColor, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Your password must be different from previous used passwords',
                    style: TextStyle(color: Constants.randomTextColor, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextField(width, 'New Password'),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(width, 'Confirm Password'),
                SizedBox(
                  height: 15,
                ),
                LoginOrSignUpPageButton(
                    function: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
                    width: width,
                    color: Constants.orrangeColor,
                    height: 50,
                    buttonText: 'Done',
                    textColor: Colors.white,
                    borderColor: Constants.borderColor,
                    backgroundColor: Constants.orrangeColor)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
