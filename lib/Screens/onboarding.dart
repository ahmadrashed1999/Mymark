import 'package:flutter/material.dart';
import 'package:mymark/Screens/aboutapp.dart';
import 'package:mymark/Screens/login.dart';

import '../combonent/reusable.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(
              "assets/images/bg1.png",
            ),
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 500,
                  width: double.infinity,
                  child: Container(
                    width: double.infinity,
                  ),
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 400,
                  width: 400,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Button("عن التطبيق", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutApp()));
            }, Color(0xFF36A9E0), Color(0xFFffffff)),
            SizedBox(
              height: 30,
            ),
            Button("تسجيل الدخول", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            }, Color(0xFFffffff), Color(0xFF000000)),
            Expanded(child: Container()),
            Text(
              'copyright at @3lamate',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
