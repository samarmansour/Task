import 'package:flutter/material.dart';
import 'package:task3/Profile.dart';
void main(List<String> args) {
  runApp(Myapp());
}
class Myapp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Profile() ,
    );
  }
}