import 'package:flutter/material.dart';
import 'package:mymark/Screens/editpage.dart';
import 'package:mymark/combonent/reusable.dart';

class Class extends StatefulWidget {
  Class({Key? key}) : super(key: key);

  @override
  State<Class> createState() => _ClassState();
}

// class Tech {
//   String label;
//   Color color;
//   bool isSelected;
//   Tech(this.label, this.color, this.isSelected);
// }

class _ClassState extends State<Class> {
  var selectedYear = 'الفصل الأول';
  List year = <String>['الفصل الأول', 'الفصل الثاني'];

  int? defaultChoiceIndex;
  List<String> _choicesList = ['الحاسوب', 'الثقافة المالية', 'العربي'];
  @override
  void initState() {
    super.initState();
    defaultChoiceIndex = 0;
  }

  // List<String> _options = ['Flutter', 'Dart', 'Woolha'];
  // List<bool> _selected = [false, false, false];
  // bool selected = false;
  // List<Tech> _chipsList = [
  //   Tech("الثقافة المالية", Colors.blue, false),
  //   Tech("الحاسوب", Colors.blue, false),
  //   Tech("العربي", Colors.blue, false),
  // ];
  List classinfo = [
    {
      'number': '242424442',
      'name': 'محمد احمد علي',
      'state': 'نظامي',
      'grade': {'first': 12, 'second': 15, 'third': 7, 'fourth': 15}
    },
    {
      'number': '242424442',
      'name': 'محمد خالد علي',
      'state': 'نظامي',
      'grade': {'first': 15, 'second': '20', 'third': 15, 'fourth': 15}
    },
    {
      'number': '242424442',
      'name': 'محمد خالد عادل',
      'state': 'ملتحق',
      'grade': {'first': 14, 'second': 14, 'third': 14, 'fourth': 14}
    },
    {
      'number': '242424442',
      'name': 'محمد خالد علي',
      'state': 'نظامي',
      'grade': {'first': 15, 'second': 15, 'third': 14, 'fourth': 15}
    },
    {
      'number': '242424442',
      'name': 'محمد خالد علي',
      'state': 'نظامي',
      'grade': {'first': 15, 'second': 15, 'third': 15, 'fourth': 15}
    }
  ];
  @override
  Widget build(BuildContext context) {
    // List<Widget> techChips() {
    //   List<Widget> chips = [];
    //   for (int i = 0; i < _chipsList.length; i++) {
    //     Widget item = Container(
    //       height: 50,
    //       child: FilterChip(
    //         avatar: null,
    //         padding: EdgeInsets.all(5),
    //         label: Text(_chipsList[i].label),
    //         labelStyle: TextStyle(color: Colors.white),
    //         backgroundColor: _chipsList[i].color,
    //         selected: _chipsList[i].isSelected,
    //         onSelected: (bool value) {
    //           setState(() {
    //             _chipsList[i].isSelected = value;
    //           });
    //         },
    //       ),
    //     );
    //     chips.add(item);
    //   }
    //   return chips;
    // }

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
          "الصف الثامن أ",
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
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Wrap(
                    spacing: 8,
                    children: List.generate(_choicesList.length, (index) {
                      return ChoiceChip(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        disabledColor: Colors.white,
                        labelPadding: EdgeInsets.all(4.0),
                        label: Container(
                          width: 85,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            _choicesList[index],
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        selected: defaultChoiceIndex == index,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            defaultChoiceIndex =
                                value ? index : defaultChoiceIndex;
                          });
                        },
                        // backgroundColor: color,
                        elevation: 1,
                      );
                    }),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: new BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Color.fromARGB(255, 255, 255, 255)),
                      width: 100,
                      height: 50,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          underline: null,
                          isExpanded: true,
                          elevation: 0,
                          value: selectedYear,
                          items: year
                              .map((e) => DropdownMenuItem(
                                    child: Center(
                                      child: Text(
                                        e,
                                        style: TextStyle(fontSize: 9),
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
                ],
              ),
              SizedBox(
                height: 30,
              ),
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
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              padding: EdgeInsets.all(5),
                              height: 100,
                              width: 500,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: 200,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "الرقم التعريفي",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 12),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  ":  ${classinfo[index]['number']}",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "الأسم:",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 10),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  ":  ${classinfo[index]['name']}",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 10),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "الحالة",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 10),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  ":  ${classinfo[index]['state']}",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 10),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: Container(
                                      height: 200,
                                      width: 3,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("التقويم الأول",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 7)),
                                                  Text(
                                                      "${classinfo[index]['grade']['first']}",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 10)),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("التقويم الثاني",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 7)),
                                                  Text(
                                                      "${classinfo[index]['grade']['second']}",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 10)),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("التقويم الثالث",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 7)),
                                                  Text(
                                                      "${classinfo[index]['grade']['third']}",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 10)),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("التقويم الرابع",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 7)),
                                                  Text(
                                                      "${classinfo[index]['grade']['fourth']}",
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 10)),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('مجموع العلامة :',
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 12)),
                                              Text('70',
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 12)),
                                              Container(
                                                width: 50,
                                                height: 30,
                                                child: ElevatedButton(
                                                    child: Text('تحرير',
                                                        style: TextStyle(
                                                            fontSize: 8,
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
                                                              builder:
                                                                  (context) =>
                                                                      EditPage(
                                                                        index:
                                                                            index,
                                                                      )));
                                                    }),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: classinfo.length),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//classinfo[index]['grade']['first'] + classinfo[index]['grade']['second'] + classinfo[index]['grade']['third'] + classinfo[index]['grade']['fourth']}