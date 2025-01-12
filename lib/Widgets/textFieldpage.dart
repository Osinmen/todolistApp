import 'package:flutter/material.dart';
import 'package:todolistapp/appStyle/appStyle.dart';

class CustomTextFormField extends StatelessWidget {
  String hintText;

  CustomTextFormField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Appstyle.styletextField16(context),
          contentPadding: const EdgeInsets.only(left: 15),
          border: InputBorder.none,
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
        ),
      ),
    );
  }

  // this is the function that is returned to the enabled border property
  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(
          color: borderColor,
        ));
  }
}

// for the password field,`
class CustomPasswordField extends StatelessWidget {
  CustomPasswordField({super.key, required this.hintText});
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Appstyle.styletextField16(context),
          contentPadding: const EdgeInsets.only(left: 15),
          border: InputBorder.none,
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(
          color: borderColor,
        ));
  }
}
