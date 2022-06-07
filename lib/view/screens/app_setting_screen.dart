import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:grape_fruit/constants/constants.dart';
import 'package:grape_fruit/view/screens/varify_pin_code.dart';

class AppSettingScreen extends StatefulWidget {
  const AppSettingScreen({Key? key}) : super(key: key);

  @override
  State<AppSettingScreen> createState() => _AppSettingScreenState();
}

class _AppSettingScreenState extends State<AppSettingScreen> {
  bool isSwitchOn = true;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        height: height,
        width: width,
        color: Constants.orrangeColor,
        child: Column(
          children: [
            Container(
                height: 70,
                child: const ListTile(

                  leading: Icon(Icons.arrow_back_ios),
                  title: Text('Username'),
                  subtitle: Text('Username'),
                )),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10))),
              height: 100,
              child: GestureDetector(
                /*onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return VerifyPinCode(

                    );
                  },));
                },*/
                child: Card(
                    child: Row(
                  children: [
                    const CircleAvatar(
                      child: Image(
                        image: AssetImage('assets/images/splashscreen.png'),
                      ),
                    ),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("abc"), Text("abc")],
                            ))),
                    FlutterSwitch(
                      height: 35,
                      width: 65,
                      onToggle: (value) {
                        setState(() {
                          isSwitchOn = value;
                        });
                      },
                      value: isSwitchOn,
                    ),
                  ],
                )),
              ),
            ),
            Expanded(
                child: Container(
                  height: 60,
              color: Colors.white,
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                        FlutterSwitch(
                          height: 35,
                          width: 65,
                          onToggle: (value) {
                            setState(() {
                              isSwitchOn = value;
                            });
                          },
                          value: isSwitchOn,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode,size: 30,),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text("Dark Mode",style: TextStyle(fontSize: 18),),
                                ))),
                      ],
                    ),
                  ),

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
