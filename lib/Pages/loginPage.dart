import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todolistapp/Pages/registerPage.dart';
import 'package:todolistapp/Widgets/containerbutton.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset("assets/arrow-left.png")),
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
              CustomPasswordField(hintText: "Enter your Password"),
              Spacer(),
              Containerbutton(requiredText: "Login"),
              Row(
                children: [
                  Divider(
                    color: borderColor,
                  ),
                  Text("Or"),
                  Divider(
                    color: borderColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              RegisterButtonAuth(
                requiredText: "Login with Google",
                assetPath: "assets/google.png",
              ),
              const SizedBox(
                height: 20,
              ),
              RegisterButtonAuth(
                requiredText: "Login with Apple",
                assetPath: "assets/apple.png",
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPage()));
                          },
                        text: "Don't have an account?",
                        style: Appstyle.styleRegister12(context)),
                    TextSpan(
                        text: "Register",
                        style: Appstyle.stylelittleLong12(context))
                  ]),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
