import 'package:flutter/material.dart';
import 'package:studentbank/views/widgets/background.dart';
import 'package:studentbank/views/widgets/gradient.dart';

class Home1Page extends StatefulWidget {
  const Home1Page({super.key});
  @override
  State<Home1Page> createState() => _Home1Page();
}

class _Home1Page extends State<Home1Page> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  final List<String> _texts = [
    "This is the first text.",
    "Here comes the second text.",
    "Now you are reading the third text.",
    "Now you are reading the fourth text.",
    "Now you are reading the fifth text.",
    "Now you are reading the sixth text.",
    "Finally, this is the seventh text."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backimgandwidget(
        "assets/images/backimg-books.png",
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: List.generate(_texts.length, (index) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: LinearProgressIndicator(
                        value: _currentIndex > index
                            ? 1.0
                            : _currentIndex == index
                                ? 1.0
                                : 0.0,
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(237, 23, 76, 1)),
                      ),
                    ),
                  );
                }),
              ),
            ),
             Container(
              margin: const EdgeInsetsDirectional.only(top: 30),
              child: const Text(
                "Actualités",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemCount: _texts.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsetsDirectional.only(top: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        _texts[index],
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: GradientColor(
                margin: const EdgeInsetsDirectional.only(bottom: 100),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(234, 74, 48, 1),
                    Color.fromRGBO(229, 2, 63, 1)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                content: ElevatedButton(
                  onPressed: () {
                    if (_currentIndex < _texts.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 70),
                  ),
                  child: const Text(
                    'Continuer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
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
