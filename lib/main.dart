import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:studentbank/views/screens/debut/home1.dart';
import 'views/widgets/background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      initial: AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Student bank',
        theme: theme,
        darkTheme: darkTheme,
       // home: const FirstPage(title : "Student Bank"),
        home: const Home1Page(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});

  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backimgandwidget(
        "assets/images/background.png", 
        const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(),
                Image(image: AssetImage('assets/images/studbank.png')),
                Image(image: AssetImage('assets/images/steppers.png')),
              ],
            ),
          ),
      ),
    );
  }
}