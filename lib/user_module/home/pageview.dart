import 'dart:async';

import 'package:flutter/material.dart';
class PageviewExample extends StatefulWidget {
  const PageviewExample({super.key});

  @override
  State<PageviewExample> createState() => _PageviewExampleState();
}

class _PageviewExampleState extends State<PageviewExample> {
  PageController _pageController = PageController();
  late Timer _timer;
  int currentPage = 0;
  int totalPages = 4; //
  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      currentPage = (currentPage + 1) % totalPages;
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _timer.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Container(
        height: 200,
        child: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (int page) {
            setState(() {
              currentPage = page;
            });
          },          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home/of.png'),fit: BoxFit.cover),
                  color: Color(0xffADDDFB),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home/off.png'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home/of2.png'),fit: BoxFit.fill),
                  color: Color(0xffADDDFB),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home/off1.png'),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      )


    );
  }
}
