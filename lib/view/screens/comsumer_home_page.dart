import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grape_fruit/constants/constants.dart';
import 'package:grape_fruit/view/widgets/temporary_container.dart';
import 'package:grape_fruit/view/widgets/textfields.dart';

class ConsumerHomePage extends StatefulWidget {
  const ConsumerHomePage({Key? key}) : super(key: key);

  @override
  State<ConsumerHomePage> createState() => _ConsumerHomePageState();
}

class _ConsumerHomePageState extends State<ConsumerHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15,top: 25),
              child: Column(
                children: [
                  Container(
                    height: height*0.4,
                    child: Column(

                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Grapefruit',
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Constants.orrangeColor),
                                  ),
                                  Text(
                                    'Home Services At Your Fingertips',
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Constants.randomTextColor),
                                  ),
                                ],
                              ),
                              Container(
                                child: CircleAvatar(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/dummy_user_image.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ]),
                          child: CustomTextField(width, 'Search Service...',
                              suffixIconUrl: 'assets/images/filter_icon.png',
                              prefixIconUrl: 'assets/images/search_icon.png'),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                         height: height*0.15,
                          margin: EdgeInsets.only(top: 20),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [TemporaryContainer()],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height*0.4,
                    child: Text('sdkdjfkjfkjdsfnlkjd'),
                  ),
                  Container(
                    height: height*0.2,
                    child: Text('sdslkmndlkk'),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
