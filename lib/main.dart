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
          Text("Githabga kirish",style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),),
          Text("Nodirchik",style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),),
          Text("Jamshid Jo'rayev",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black),),
          Text('Muhammad',style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),),
          Text("Dilshodbek", style: TextStyle(fontSize: 35,color: Colors.tealAccent),),
          Text("Dilxiroj",style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),),
        ],
      ),
    );
  }
}


