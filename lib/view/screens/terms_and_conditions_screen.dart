import 'package:flutter/material.dart';
import 'package:grape_fruit/constants/constants.dart';
import 'package:grape_fruit/view/screens/privacy_policy_screen.dart';
import 'package:grape_fruit/view/widgets/buttons.dart';
import 'package:grape_fruit/view/widgets/terms_widget.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
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
              )),
          elevation: 0,
        ),
        body: getTermsWidget(
            (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrivacyPolicyScreen(),));},
            'Terms and Conditions',
            width,
            height,
            'assets/images/terms_n_conditions_top_image.png',
            'assets/images/terms_n_conditions_asset.png',
            'Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking.',
            'Accept'));
  }
}
