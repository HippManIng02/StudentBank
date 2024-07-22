import 'package:flutter/material.dart';
import 'package:studentbank/views/widgets/background.dart';
import 'package:studentbank/views/widgets/gradient.dart';
import 'dart:ui';

class ModePage extends StatefulWidget {
  const ModePage({super.key});
  @override
  State<ModePage> createState() => _ModePage();
}

class _ModePage extends State<ModePage> {
  bool _isCheckedDark = true;
  bool _isCheckedLight = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backimgandwidget(
        "assets/images/background.png",
        Column(
          children: <Widget>[
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(0),
                borderOnForeground: false,
                color: const Color.fromRGBO(255, 255, 255, 0.9),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                elevation: 50.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                      const GradientText(
                        text: 'White Mode',
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(245, 130, 32, 1),
                              Color.fromRGBO(237, 23, 76, 1),
                            ]),
                        style: TextStyle(fontSize: 50.0),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          backgroundColor:
                              const Color.fromRGBO(194, 192, 192, 1),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Activer',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            const SizedBox(width: 50),
                            Switch(
                              inactiveThumbColor:
                                  const Color.fromRGBO(237, 23, 76, 1),
                              activeColor: const Color.fromRGBO(79, 192, 49, 1),
                              activeTrackColor:
                                  const Color.fromRGBO(126, 126, 126, 1),
                              inactiveTrackColor:
                                  const Color.fromRGBO(126, 126, 126, 1),
                              value: _isCheckedLight,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isCheckedLight = value ?? false;
                                  _isCheckedDark = !_isCheckedLight;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(0),
                color: const Color.fromRGBO(0, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
                elevation: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const GradientText(
                        text: 'Dark Mode',
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(245, 130, 32, 1),
                              Color.fromRGBO(237, 23, 76, 1),
                            ]),
                        style: TextStyle(fontSize: 50.0),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          backgroundColor:
                              const Color.fromRGBO(194, 192, 192, 1),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Activer',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            const SizedBox(width: 50),
                            Switch(
                              inactiveThumbColor:
                                  const Color.fromRGBO(237, 23, 76, 1),
                              activeColor: const Color.fromRGBO(79, 192, 49, 1),
                              activeTrackColor:
                                  const Color.fromRGBO(126, 126, 126, 1),
                              inactiveTrackColor:
                                  const Color.fromRGBO(126, 126, 126, 1),
                              value: _isCheckedDark,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isCheckedDark = value ?? false;
                                  _isCheckedLight = !_isCheckedDark;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const Card(),
                    ],
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
