import 'package:default_project/ui/welcome/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
      home: Column(
        children: [
          Text("Jamshid Jo'rayev",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black),)
        ],
      ),
    );
  }
}


