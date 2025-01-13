import 'package:flutter/material.dart';
import 'package:todolistapp/Widgets/containerbutton.dart';
import 'package:todolistapp/Widgets/textFieldpage.dart';
import 'package:todolistapp/appStyle/appStyle.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset("assets/arrow-left.png")),
            ),
            Text(
              "Username",
              style: Appstyle.styleRegular16(context),
            ),
            CustomTextFormField(hintText: "Enter your Username"),
            Text(
              "Password",
              style: Appstyle.styleRegular16(context),
            ),
            CustomPasswordField(hintText: "Enter your password"),
            Text(
              "Confirm Password",
              style: Appstyle.styleRegular16(context),
            ),
            CustomPasswordField(hintText: "Confirm Password"),
            const SizedBox(
              height: 20,
            ),
            Containerbutton(requiredText: "Register"),
            const SizedBox(
              height: 10,
            ),
            Text("Or"),
            RegisterButtonAuth(
                requiredText: "Register with Google",
                assetPath: "assets/google.png"),
            const SizedBox(
              height: 20,
            ),
            RegisterButtonAuth(
                requiredText: "Register with Apple",
                assetPath: "assets/apple.png"),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      // recognizer: TapGestureRecognizer()
                      //   ..onTap = () {
                      //     //Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                      //   },
                      text: "Don't have an account?",
                      style: Appstyle.styleRegister12(context)),
                  TextSpan(
                      text: "Register",
                      style: Appstyle.stylelittleLong12(context))
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
