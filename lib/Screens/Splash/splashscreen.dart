import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Login/loginScreen.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      Timer(Duration(seconds: 3), (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.customImage(imgurl: "instagram.png"),
          SizedBox(height: 10,),
          UiHelper.customImage(imgurl: "InstagramLogo.png"),
        ],
      ),),
    );
  }
}