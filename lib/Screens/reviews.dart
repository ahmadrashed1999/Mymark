import 'package:flutter/material.dart';
import 'package:mymark/Screens/class.dart';
import 'package:mymark/combonent/reusable.dart';

class Reviews extends StatefulWidget {
  Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  var selectedYear = '2022-2023';
  List year = <String>['2022-2023', '2022-2021', '2021-2020', '2020-2019'];

  List infoo = [
    {
      'class': 'الأول أ',
      'calender': 'الفصل الثاني',
      'year': '2022-2023',
      'classlevel': 'الصف الاول',
      'material': 'المادة الاولى',
      'mealstudent': '17',
      'femalestuent': '17',
    },
    {
      'class': 'الرابع ب',
      'calender': 'الفصل الثاني',
      'year': '2022-2023',
      'classlevel': 'الصف الرابع',
      'material': 'المادة الاولى',
      'mealstudent': '13',
      'femalestuent': '16',
    },
    {
      'class': 'الخامس ج',
      'calender': 'الفصل الاول',
      'year': '2022-2023',
      'classlevel': 'الصف الخامس',
      'material': 'المادة الاولى',
      'mealstudent': '12',
      'femalestuent': '16',
    },
    {
      'class': 'الرابع ب',
      'calender': 'الفصل الثاني',
      'year': '2022-2023',
      'classlevel': 'الصف الرابع',
      'material': 'المادة الاولى',
      'mealstudent': '13',
      'femalestuent': '16',
    },
    {
      'class': 'الخامس ج',
      'calender': 'الفصل الاول',
      'year': '2022-2023',
      'classlevel': 'الصف الخامس',
      'material': 'المادة الاولى',
      'mealstudent': '12',
      'femalestuent': '16',
    },
    {
      'class': 'الرابع ب',
      'calender': 'الفصل الثاني',
      'year': '2022-2023',
      'classlevel': 'الصف الرابع',
      'material': 'المادة الاولى',
      'mealstudent': '13',
      'femalestuent': '16',
    },
    {
      'class': 'الخامس ج',
      'calender': 'الفصل الاول',
      'year': '2022-2023',
      'classlevel': 'الصف الخامس',
      'material': 'المادة الاولى',
      'mealstudent': '12',
      'femalestuent': '16',
    },
    {
      'class': 'الرابع ب',
      'calender': 'الفصل الثاني',
      'year': '2022-2023',
      'classlevel': 'الصف الرابع',
      'material': 'المادة الاولى',
      'mealstudent': '13',
      'femalestuent': '16',
    },
  ];
  var selectedR = 'الفصل الأول';
  @override
  Widget build(BuildContext context) {
    List yearR = <String>[
      'الفصل الأول',
      'الفصل الثاني',
      'الفصل الثالث',
      'الفصل الرابع'
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Image.asset(
            "assets/images/logo.png",
          ),
        ],
        title: Text(
          "التقييمات",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/images/back.png',
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 235, 236, 235),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: new BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Color.fromARGB(255, 255, 255, 255)),
                      width: 120,
                      height: 60,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          elevation: 0,
                          value: selectedYear,
                          items: year
                              .map((e) => DropdownMenuItem(
                                    child: Center(
                                      child: Text(
                                        e,
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (e) {
                            setState(() {
                              selectedYear = e.toString();
                            });
                          },
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: new BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Color.fromARGB(255, 255, 255, 255)),
                      width: 120,
                      height: 60,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          elevation: 0,
                          value: selectedR,
                          items: yearR
                              .map((e) => DropdownMenuItem(
                                    child: Center(
                                      child: Text(
                                        e,
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (e) {
                            setState(() {
                              selectedR = e.toString();
                            });
                          },
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Class()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  color: Colors.white,
                                  child: Center(
                                    child: Table(
                                      columnWidths: const {
                                        0: FixedColumnWidth(30),
                                        1: FixedColumnWidth(35),
                                        2: FixedColumnWidth(35),
                                        3: FixedColumnWidth(50),
                                        4: FixedColumnWidth(50),
                                        5: FixedColumnWidth(45),
                                        6: FixedColumnWidth(45),
                                      },
                                      border: TableBorder.symmetric(
                                          inside: BorderSide(
                                              width: 2, color: Colors.blue)),
                                      defaultVerticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                      children: [
                                        TableRow(children: [
                                          tableCell("الشعبة"),
                                          tableCell("التقويم"),
                                          tableCell("السنة"),
                                          tableCell("الصف التعليمي"),
                                          tableCell("المواد الدراسية"),
                                          tableCell("الطلبة الذكور"),
                                          tableCell("الطلبة الإناث"),
                                        ]),
                                        TableRow(children: [
                                          tableCell("${infoo[index]['class']}"),
                                          tableCell(
                                              "${infoo[index]['calender']}"),
                                          tableCell("${infoo[index]['year']}"),
                                          tableCell(
                                              "${infoo[index]['classlevel']}"),
                                          tableCell(
                                            "${infoo[index]['material']}",
                                          ),
                                          tableCell(
                                              "${infoo[index]['mealstudent']}"),
                                          tableCell(
                                            "${infoo[index]['femalestuent']}",
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.blue, width: 1),
                                    borderRadius: new BorderRadius.all(
                                      Radius.circular(7),
                                    ),
                                  ),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Class()));
                                      },
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.visibility_rounded,
                                            color: Colors.blue,
                                            size: 20,
                                          ),
                                          Text('عرض',
                                              style: TextStyle(
                                                  fontSize: 6,
                                                  color: Colors.blue)),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableCell tableCell(text) {
    return TableCell(
        child: Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
