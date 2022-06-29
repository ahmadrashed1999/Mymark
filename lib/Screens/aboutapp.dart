import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mymark/Screens/aboutapp2.dart';
import 'package:mymark/Screens/login.dart';

import '../combonent/reusable.dart';

class AboutApp extends StatelessWidget {
  AboutApp({Key? key}) : super(key: key);
  List about = [
    "تطبيق علاماتي الموجه للأساتذة",
    "هنا يمكنك ادارة جميع علاماتك الموجهة",
    "يمكنك تسجيل علامة جديدة بالضغط على زر تسجيل علامة جديدة"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Image.asset('assets/images/bg.png').color,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(
              "assets/images/bgabout.png",
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  initialPage: 1,
                  height: 400.0,
                  reverse: false,
                  autoPlay: true,
                ),
                items: about.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Container(
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    borderRadius: new BorderRadius.all(
                                        Radius.circular(10)),
                                    color: Color.fromARGB(250, 255, 255, 255)),
                                child: Center(
                                  child: Text(
                                    '$i',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ApoutButton("تسجيل الدخول", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }),
                ApoutButton("التالي", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutApp2()));
                }),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
