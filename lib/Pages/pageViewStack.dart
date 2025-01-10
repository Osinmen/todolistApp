import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todolistapp/Widgets/pageView1.dart';
import 'package:todolistapp/Widgets/pageView3.dart';
import 'package:todolistapp/Widgets/pageView2.dart';

class Pageviewstack extends StatefulWidget {
  const Pageviewstack({super.key});

  @override
  State<Pageviewstack> createState() => _PageviewstackState();
}

class _PageviewstackState extends State<Pageviewstack> {
  late PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: [Pageview1(), Pageview2(), Pageview3()],
            ),
            Container(
                alignment: Alignment(0, 0),
                child: SmoothPageIndicator(
                    effect: SlideEffect(
                        dotHeight: 3,
                        dotWidth: 20,
                        activeDotColor: Colors.white),
                    controller: _controller,
                    count: 3))
          ],
        ),
      ),
    );
  }
}
