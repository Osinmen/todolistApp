import 'package:flutter/material.dart';
import 'package:todolistapp/appStyle/appStyle.dart';
import 'package:todolistapp/Widgets/constantheight.dart';

class Pageview1 extends StatelessWidget {
  const Pageview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: skipText(),
              ),
              SizedBox1(),
              Image.asset("assets/manage.png"),
              Spacer1(),
              Text(
                "Manage Your tasks",
                style: Appstyle.styleBold32(context),
              ),
              SizedBox2(),
              Text(
                textAlign: TextAlign.center,
                "You can easily manage all of your daily\n tasks in Do me for free",
                style: Appstyle.styleRegular16(context),
              ),
              SizedBox3(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "BACK",
                      style: Appstyle.stylefaint16(context),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFF8875FF)),
                      child: Text(
                        "NEXT",
                        style: Appstyle.stylefaint16(context),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
