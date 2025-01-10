import 'package:flutter/material.dart';
import 'package:todolistapp/Widgets/constantheight.dart';
import 'package:todolistapp/appStyle/appStyle.dart';

class Pageview2 extends StatelessWidget {
  const Pageview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: <Widget>[
            Align(alignment: Alignment.topLeft, child: skipText()),
            SizedBox1(),
            Image.asset("assets/create.png"),
            Spacer1(),
            Text(
              "Create daily routine",
              style: Appstyle.styleBold32(context),
            ),
            SizedBox2(),
            Text(
              textAlign: TextAlign.center,
              "in Uptodo you can create your\n personalized routine to stay productive,",
              style: Appstyle.styleRegular16(context),
            ),
            SizedBox3(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BACK",
                  style: Appstyle.stylefaint16(context),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF8875FF)),
                  child: Text(
                    "NEXT",
                    style: Appstyle.stylefaint16(context),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
