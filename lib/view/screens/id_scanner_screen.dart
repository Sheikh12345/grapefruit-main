import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grape_fruit/constants/constants.dart';
import 'package:grape_fruit/view/screens/login_screen.dart';
import 'package:grape_fruit/view/screens/varify_pin_code.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class IDScannerScreen extends StatefulWidget {
  const IDScannerScreen({Key? key}) : super(key: key);

  @override
  State<IDScannerScreen> createState() => _IDScannerScreenState();
}

class _IDScannerScreenState extends State<IDScannerScreen> {
  File? _image;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Constants.greyColor.withAlpha(100),
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(color: Constants.greyColor.withAlpha(90)),
        child: Column(
          children: [
            Container(
              height: height * 0.2,
              child: Center(
                  child: Text(
                'Scan Your ID/Passport',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              height: height * 0.5,
              child: Center(
                child: Container(
                  color: Colors.white,
                  child: _image == null ? Image(
                    image: AssetImage('assets/images/id_card.png'),
                  ) : Image(image: FileImage(_image!),),
                ),
              ),
            ),
            GestureDetector(
                onTap: () async {
                  if(_image==null){
                    await showOptions();


                  }
                  else{
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return VerifyPinCode(
                          function: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                        );
                      },
                    ));
                  }



                 /* else{
                    await GeneralDialogs.showOopsDialog(context, 'Please Select an Image');
                  }*/

                },
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  height: height * 0.2,
                  child: Center(
                    child:  Image(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/camera_click_button.png'),
                          )

                  ),
                ))
          ],
        ),
      )),
    );
  }

  //Image Picker function to get image from gallery
  Future<File?> _imgFromCamera() async {
    PickedFile? pickedFile = await ImagePicker.platform.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );

    if (pickedFile == null) return null;

    File img = File(pickedFile.path);
    return img;
  }

  Future<File?> _imgFromGallery() async {
    PickedFile? pickedFile = await ImagePicker.platform.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    if (pickedFile == null) return null;

    File img = File(pickedFile.path);

    return img;
  }


  //Show options to get image from camera or gallery
  Future showOptions() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: Text('Photo Gallery'),
            onPressed: () async {
              // close the options modal
              Navigator.of(context).pop();
              // get image from gallery
             _image= await _imgFromGallery();
             setState(() {

             });
            },
          ),
          CupertinoActionSheetAction(
            child: Text('Camera'),
            onPressed: () async {
              // close the options modal
              Navigator.of(context).pop();
              // get image from camera
              _image= await _imgFromCamera();

              setState(() {

              });
            },
          ),
        ],
      ),
    );
  }
}
