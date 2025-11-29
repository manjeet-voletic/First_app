import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class Learn extends StatefulWidget {
  const Learn({super.key,});

  @override
  State<Learn> createState() => _LearnState();
}
class _LearnState extends State<Learn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E7CE1), // Top-Bottom gradient look
    appBar: AppBar(
      title: Text ('First Learning'),
    ),
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          color: Colors.white,
          child:Center(
          child: Text('My Name Is Manjeet', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,backgroundColor: Colors.amberAccent,),
        ),
        ),
      ),
    );
    );
  }
}