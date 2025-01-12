import 'package:flutter/material.dart';
import 'package:todolistapp/Widgets/textFieldpage.dart';
import 'package:todolistapp/appStyle/appStyle.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset("assets/arrow-left.png"),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Username",
              style: Appstyle.styleRegular16(context),
            ),
            CustomTextFormField(hintText: "Enter your Username "),
            Text(
              "Password",
              style: Appstyle.styleRegular16(context),
            ),
            CustomPasswordField(hintText: "Enter your Password")
          ],
        ),
      ),
    );
  }
}
