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
          SizedBox(height: 30),
          Text("Github ga kirish",style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),),
          Text("Nodirchik",style: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.w900),),
          Text("Jamshid Jo'rayev",style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),),
          Text('Muhammad',style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),),
          Text("Dilshodbek",style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),),
          Text("Dilxiroj",style: TextStyle(color: Colors.red,fontSize: 23,fontWeight: FontWeight.w900),),
        ],
      ),
    );
  }
}


