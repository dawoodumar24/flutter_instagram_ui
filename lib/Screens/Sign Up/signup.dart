import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Login/loginScreen.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class SignUpScreen extends StatelessWidget {

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imgurl: "InstagramLogo.png"),
            SizedBox(height: 22,),
            UiHelper.customTextfield(controller: usernameController, Text: "Username", tohide: false, textinputtype: TextInputType.name),
            SizedBox(height: 10,),
            UiHelper.customTextfield(controller: emailController, Text: "Email", tohide: false, textinputtype: TextInputType.emailAddress),
            SizedBox(height: 10,),
            UiHelper.customTextfield(controller: passController, Text: "Password", tohide: true, textinputtype: TextInputType.text),
            SizedBox(height: 30),
            UiHelper.customElevatedButton(callback: (){}, buttonname: "Sign up"),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: TextStyle(color: Colors.grey,fontSize: 14),),
             UiHelper.customTextButton(callback: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
             }, buttonname: "Sign in.")
              ],
            )

          ],
        )
      ),
    );
  }
}