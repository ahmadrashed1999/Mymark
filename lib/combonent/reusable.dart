import 'package:flutter/material.dart';

Widget Button(text, func, color, txtcolor) {
  return Container(
    width: 350,
    height: 60,
    child: ElevatedButton(
        child: Text(text, style: TextStyle(fontSize: 18, color: txtcolor)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Color(0xFF36A9E0))))),
        onPressed: func),
  );
}

Widget ApoutButton(text, func) {
  return Container(
    width: 150,
    height: 60,
    child: ElevatedButton(
        child: Text(text,
            style: TextStyle(fontSize: 18, color: Color(0xFF36A9E0))),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color(0xFF36A9E0))))),
        onPressed: func),
  );
}

void anotherPage(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

Container buildTextField(text, controller, type, icon, {preicon}) {
  return Container(
    height: 80,
    width: 350,
    child: TextFormField(
      textAlign: TextAlign.right,
      keyboardType: type,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
      },
      controller: controller,
      autofocus: false,
      style: const TextStyle(fontSize: 14.0, color: Colors.black),
      decoration: InputDecoration(
        suffixIcon: Icon(icon),
        prefixIcon: Icon(preicon),
        filled: true,
        fillColor: Colors.white,
        hintText: text,
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
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
  );
}

Widget drawerRow(text, func) {
  return InkWell(
    onTap: func,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 10),
          child: Text(
            text,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
