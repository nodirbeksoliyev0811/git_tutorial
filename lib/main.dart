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
      home: const Column(
        children: [
          Text("Nodirchik",style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),)
        ],
      ),
    );
  }
}


