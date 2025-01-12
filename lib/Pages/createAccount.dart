import 'package:flutter/material.dart';

import 'package:todolistapp/appStyle/appStyle.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/arrow-left.png")),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome to UpTodo",
              style: Appstyle.styleBold32(context),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
                textAlign: TextAlign.center,
                style: Appstyle.styleRegular16(context),
                "please login to your account or create\n new account to continue"),
            Spacer(),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.width * 0.1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFF8875FF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: Appstyle.stylefaint16(context),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.width * 0.1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppPrimaryColor, width: 2.0)),
                child: Center(
                  child: Text(
                    "CREATE ACCOUNT",
                    style: Appstyle.stylefaint16(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
