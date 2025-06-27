import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Sign%20Up/signup.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imgurl: "InstagramLogo.png"),
            SizedBox(height: 20,),
            UiHelper.customTextfield(controller: emailController, Text: "Email", tohide: false, textinputtype: TextInputType.emailAddress),
            SizedBox(height: 15,),
            UiHelper.customTextfield(controller: passController, Text: "password", tohide: true, textinputtype: TextInputType.text),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
            Padding(
            padding: const EdgeInsets.only(right: 20),
            child:
            UiHelper.customTextButton(callback: (){}, buttonname: "Forgot password?"),
            ),
                ],
            ),
            SizedBox(height: 15,),
            UiHelper.customElevatedButton(callback: (){}, buttonname: "Log in"),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customImage(imgurl: "Icon.png"),
                UiHelper.customTextButton(callback: (){}, buttonname: "Log in with Facebook"),
              ],
            ),
            SizedBox(height: 14,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customImage(imgurl: "Line.png",color: Colors.white,),
                Text("OR",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                UiHelper.customImage(imgurl: "Line.png"),
              ],
            ),
            SizedBox(height: 14,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(fontSize: 14,color: Colors.white),),
                UiHelper.customTextButton(callback: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                }, buttonname: "Sign up.")
              ],
            )
          ],
        ),
      ),
    );
  }
}