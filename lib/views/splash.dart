import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/views/home.dart';
import 'package:news_app/constants/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => Home()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 25),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'News',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    TextSpan(
                      text: 'App',
                      style: TextStyle(
                          color: kCorPrimaria,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    TextSpan(
                      text: ' P2',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/news.png',
              height: 280,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Um novo conceito de notícia \n para o seu dia a dia',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(kCorPrimaria),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
