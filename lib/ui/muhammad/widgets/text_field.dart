import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key, required this.title});

  final String title;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * (109 / 375),
      height: height * (20 / 812),
      child: TextField(
        textInputAction: TextInputAction.next,
        style: TextStyle(
          fontSize: width * (10 / 375),
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: widget.title,
          hintStyle: TextStyle(
            fontSize: width * (10 / 375),
            fontWeight: FontWeight.w400,
            color: Color(0xFF9C9C9C),
          ),
          fillColor: Colors.black,
        ),
      ),
    );
  }
}
