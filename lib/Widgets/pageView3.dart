import 'package:flutter/material.dart';
import 'package:todolistapp/Widgets/constantheight.dart';
import 'package:todolistapp/appStyle/appStyle.dart';

class Pageview3 extends StatelessWidget {
  const Pageview3({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Align(alignment: Alignment.topLeft, child: skipText()),
            SizedBox1(),
            Image.asset("assets/organize.png"),
            Spacer1(),
            Text(
              "Organzie Your tasks",
              style: Appstyle.styleBold32(context),
            ),
            SizedBox2(),
            Text(
              textAlign: TextAlign.center,
              "You can organize your daily tasks by \n adding you tasks into seperate categories",
              style: Appstyle.styleRegular16(context),
            ),
            SizedBox3(),
          ],
        ),
      ),
    );
  }
}
