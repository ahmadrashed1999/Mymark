import 'package:carousel_slider/carousel_slider.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:mymark/Screens/reviews.dart';

import '../combonent/reusable.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = ['اول ملاحظة هنا', 'ثاني ملاحظة هنا', 'ثالث ملاحظة هنا'];
  bool mode = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mode = true;
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 235),
      endDrawer: Container(
          margin: EdgeInsets.only(top: 33),
          child: Drawer(
            backgroundColor: Colors.blue,
            child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    Container(
                      width: double.infinity,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            drawerRow('من نحن', () {}),
                            drawerRow('سياسة الخصوصية', () {}),
                            drawerRow('الشروط والاحكام', () {}),
                            drawerRow('تسجيل الخروج', () {}),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          )),
      appBar: AppBar(
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Image.asset("assets/images/drawer.png"),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
        toolbarHeight: 100,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 33.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 150,
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      // appBar: PreferredSize(
      //     preferredSize: Size.fromHeight(100.0),
      //     child: AppBar(
      //       automaticallyImplyLeading: false, // hides leading widget
      //       flexibleSpace: Container(),
      //     )),
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
          content: Text('اضغط مرة اخرى للخروج'),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Visibility(
              visible: mode,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 100.0,
                  reverse: false,
                  autoPlay: true,
                ),
                items: notes.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      new BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              child: Center(
                                child: Text(
                                  '$i',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  mode = false;
                                });
                              },
                              icon: Icon(Icons.cancel))
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "التقييمات",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: 300,
                  width: double.infinity,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 191, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reviews()));
                          },
                          child: Icon(
                            Icons.add_rounded,
                            size: 65,
                            color: Colors.white,
                          )),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
