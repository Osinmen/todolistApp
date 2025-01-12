import 'package:flutter/material.dart';
import 'package:todolistapp/appStyle/appStyle.dart';

class Containerbutton extends StatelessWidget {
  String requiredText;
  Containerbutton({super.key, required this.requiredText});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.09,
        decoration: BoxDecoration(
          color: AppPrimaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            requiredText,
            style: Appstyle.styleRegular16(context),
          ),
        ),
      ),
    );
  }
}

//thisis the class that would take the google authentication andn the registration button

class RegisterButtonAuth extends StatelessWidget {
  String assetPath;
  String requiredText;
  RegisterButtonAuth(
      {super.key, required this.requiredText, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.09,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 2,
              color: AppPrimaryColor,
            )),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(assetPath),
              const SizedBox(
                width: 10,
              ),
              Text(
                requiredText,
                style: Appstyle.styleRegular16(context),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
