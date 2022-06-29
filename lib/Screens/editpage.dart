import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:mymark/Screens/voicetotext.dart';

class EditPage extends StatelessWidget {
  EditPage({Key? key, required this.index}) : super(key: key);
  final int index;
  List classinfo = [
    {
      'number': '242424442',
      'name': 'محمد احمد علي',
      'state': 'نظامي',
      'grade': {
        0: ['التقويم الأول', 15],
        1: ['التقويم الثاني', 12],
        2: ['التقويم الثالث', 19],
        3: ['التقويم الرابع', 17]
      }
    },
    {
      'number': '242424442',
      'name': 'محمد خالد علي',
      'state': 'نظامي',
      'grade': {
        0: ['التقويم الأول', 2],
        1: ['التقويم الثاني', 3],
        2: ['التقويم الثالث', 4],
        3: ['التقويم الرابع', 5]
      }
    },
    {
      'number': '242424442',
      'name': 'محمد خالد عادل',
      'state': 'ملتحق',
      'grade': {
        0: ['التقويم الأول', 5],
        1: ['التقويم الثاني', 5],
        2: ['التقويم الثالث', 6],
        3: ['التقويم الرابع', 7]
      }
    },
    {
      'number': '242424442',
      'name': 'محمد خالد علي',
      'state': 'نظامي',
      'grade': {
        0: ['التقويم الأول', 15],
        1: ['التقويم الثاني', 7],
        2: ['التقويم الثالث', 7],
        3: ['التقويم الرابع', 7]
      }
    },
    {
      'number': '242424442',
      'name': 'محمد خالد علي',
      'state': 'نظامي',
      'grade': {
        0: ['التقويم الأول', 15],
        1: ['التقويم الثاني', 15],
        2: ['التقويم الثالث', 15],
        3: ['التقويم الرابع', 15]
      }
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Image.asset(
            "assets/images/logo.png",
            width: 120,
          ),
        ],
        title: Text(
          "تحرير",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Text(
              'حفظ',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 235, 236, 235),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            "الرقم التعريفي",
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            ":  ${classinfo[index]['number']}",
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            "الأسم:",
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            ":  ${classinfo[index]['name']}",
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "الحالة",
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            ":  ${classinfo[index]['state']}",
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                        child: Text('تعديل',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255))),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        BorderSide(color: Color(0xFF36A9E0))))),
                        onPressed: () {
                          showdialog(context, "text", () {});
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SpeechSampleApp()));
                        }),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Flexible(
                    child: SingleChildScrollView(
                      child: ListView.separated(
                          primary: false,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 10,
                            );
                          },
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                print('hello');
                              },
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  padding: EdgeInsets.all(5),
                                  height: 100,
                                  width: 500,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                          '${classinfo[index]['grade'][index][0]}'),
                                      Text(
                                        '${classinfo[index]['grade'][index][1]}',
                                      ),
                                      Container(
                                        width: 100,
                                        height: 40,
                                        child: ElevatedButton(
                                            child: Text('تعديل',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255))),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.blue),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(10.0),
                                                        side: BorderSide(color: Color(0xFF36A9E0))))),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          EditPage(
                                                            index: index,
                                                          )));
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: classinfo[index]['grade'].length),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showdialog(context, text, func) {
  AwesomeDialog(
    dialogType: DialogType.NO_HEADER,
    context: context,
    dismissOnTouchOutside: false,
    animType: AnimType.SCALE,
    body: Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                17.toString(),
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
              Text(
                'النقويم الأول',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 110,
                height: 110,
                padding: EdgeInsets.all(10),
                child: IconButton(
                  icon: Icon(Icons.keyboard_voice_sharp,
                      color: Colors.blue, size: 75),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    btnOkColor: Colors.grey,
    btnOkText: 'حفظ',
    title: 'This is Ignored',
    desc: 'This is also Ignored',
    btnOkOnPress: func,
  ).show();
}
