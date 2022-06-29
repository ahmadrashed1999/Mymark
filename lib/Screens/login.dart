import 'package:flutter/material.dart';
import 'package:mymark/Screens/homepage.dart';

import '../combonent/reusable.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();
  bool visible = false;
  Icon visibility(visible) {
    return Icon(
      visible ? Icons.visibility : Icons.visibility_off,
      color: Colors.grey,
    );
  }

  var fkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 235),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 150,
                    ),
                  )),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 100,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "اهلا بك عزيزي المعلم يرجى منك ادخال بيانات تسجيل الدخول  المسجلة لدى موقع الوزارة emis.moe.gov.jo",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                child: Form(
                  key: fkey,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("تسجيل الدخول"),
                          ],
                        ),
                      ),
                      buildTextField("اسم المستخدم", username,
                          TextInputType.name, Icons.mail_outline),
                      Container(
                        height: 80,
                        width: 350,
                        child: TextFormField(
                          obscureText: !visible,
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                          },
                          controller: password,
                          autofocus: false,
                          style: const TextStyle(
                              fontSize: 14.0, color: Colors.black),
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.lock),
                            prefixIcon: IconButton(
                              icon: (visible)
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  visible = !visible;
                                });
                              },
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "الرقم السري",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      // buildTextField("الرقم السري ", password, TextInputType.name,
                      //     Icons.lock,
                      //     preicon: Icons.visibility, visibility: () {
                      //   setState(() {
                      //     visibility(visible);
                      //     visible = !visible;
                      //   });
                      // }),
                      Button("تسجيل الدخول", () {
                        // print(username.text);
                        // print(password.text);
                        if (fkey.currentState!.validate()) {
                          loginchecks(username.text, password.text, context);
                        }
                      }, Color(0xFF36A9E0), Color(0xFFffffff)),

                      SizedBox(
                        child: Container(),
                        height: 135,
                      ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

void loginchecks(username, password, context) {
  print('eeeeeeeeeee');
  if (true) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  } else {
    print("error");
  }
}
