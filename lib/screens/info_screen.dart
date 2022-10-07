import 'package:flutter/material.dart';
import 'package:new_project/screens/intro_screens/intro_page1.dart';
import 'package:new_project/screens/intro_screens/intro_page2.dart';
import 'package:new_project/screens/intro_screens/intro_page3.dart';
import 'package:new_project/screens/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  // page controller
  PageController _controller = PageController();
  // bool value to keep track on if we are in last page ?
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            // keeps track on the page changed
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // prev page
                GestureDetector(
                  onTap: () {
                    _controller.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Text(
                    'Previous',
                    style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                  ),
                ),
                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),
                // Done or next
                // if we are on the last page then 'Done' otherwise 'next'
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Done',
                          style:
                              TextStyle(fontSize: 18, color: Colors.blue[900]),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          'Next',
                          style:
                              TextStyle(fontSize: 18, color: Colors.blue[900]),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
