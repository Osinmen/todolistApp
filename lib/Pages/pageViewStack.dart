import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todolistapp/Widgets/pageView1.dart';
import 'package:todolistapp/Widgets/pageView3.dart';
import 'package:todolistapp/Widgets/pageView2.dart';
import 'package:todolistapp/appStyle/appStyle.dart';

class Pageviewstack extends StatefulWidget {
  const Pageviewstack({super.key});

  @override
  State<Pageviewstack> createState() => _PageviewstackState();
}

class _PageviewstackState extends State<Pageviewstack> {
  late PageController _controller = PageController();
  int _currentPage = 0;

  void navigateToPage(int page) {
    _controller.animateToPage(page,
        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              controller: _controller,
              children: const [Pageview1(), Pageview2(), Pageview3()],
            ),
            Container(
              alignment: const Alignment(0, 0),
              child: SmoothPageIndicator(
                  effect: const SlideEffect(
                      dotHeight: 3, dotWidth: 20, activeDotColor: Colors.white),
                  controller: _controller,
                  count: 3),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_currentPage > 0) {
                          navigateToPage(_currentPage - 1);
                        }
                      },
                      child: Text(
                        "BACK",
                        style: Appstyle.stylefaint16(context),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_currentPage < 2) {
                          // Assuming there are 3 pages
                          navigateToPage(_currentPage + 1);
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFF8875FF),
                        ),
                        child: Text(
                          "NEXT",
                          style: Appstyle.stylefaint16(context),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
