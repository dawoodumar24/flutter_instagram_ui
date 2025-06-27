import 'package:flutter/material.dart';

class UiHelper {

  static customTextfield({required TextEditingController controller, required String Text, required bool tohide, required TextInputType textinputtype}) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          keyboardType: textinputtype,
          decoration: InputDecoration(
            hintText: Text,
            hintStyle: TextStyle(fontSize: 14, color: Color(0XFFFFFFFF),fontWeight: FontWeight.normal),
            border: InputBorder.none
          ),
        ),
      ),
    );
  }

  static customImage({required String imgurl, Color? color,}) {
    return Image.asset("assets/images/$imgurl");
  }

  static customTextButton({required VoidCallback callback, required String buttonname}) {
    return TextButton(onPressed: (){
      callback();
    }, child: Text(buttonname, style: TextStyle(color: Color(0XFF3797EF), fontSize: 12),));
  }

  static customElevatedButton({required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(onPressed: (){callback();},style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF3797EF), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), child: Text(buttonname, style: TextStyle(fontSize: 14, color: Colors.white),)),
    );
  }

}
