import 'package:flutter/material.dart';
import 'package:grape_fruit/view/screens/comsumer_home_page.dart';
import 'package:grape_fruit/view/screens/login_or_signup_page.dart';
import 'package:grape_fruit/view/widgets/terms_widget.dart';

import '../../constants/constants.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
          (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConsumerHomePage(),));},
          'Privacy Agreement',
          width,
          height,
          'assets/images/privacy_agreement_top_image.png',
          'assets/images/terms_n_conditions_asset.png',
          'Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Term of Service or Terms of Use agreements These terms are interchangeable, practically speaking. . Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable,practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms areinterchangeable, practically speaking. Terms and Conditions agreements are also known as Terms of Service or Terms ofUse agreements. These terms are interchangeable,practically speaking.',
          'Accept'),
    );
  }
}
