import 'dart:async';
import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  PageController _pageController = PageController();
  late Timer _timer;
  int currentPage = 0;
  int totalPages = 5; // Replace with the actual number of pages

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
      body: Container(
        height: 200,
        child: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (int page) {
            setState(() {
              currentPage = page;
            });
          },
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/acc/logo/audi.jpg'),fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/acc/logo/benz.png'),fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/acc/logo/bmw.jpg'),fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/acc/logo/rr.jpg'),fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/acc/logo/lamp.jpg'),fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
// ...
          ],
        ),
      ),
    );
  }
}
