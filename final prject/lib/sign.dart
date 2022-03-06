import 'package:flutter/material.dart';
import 'package:task3/Privacy.dart';
import 'package:task3/code.dart';

class Signscreen extends StatefulWidget {
  @override
  _SignscreenState createState() => _SignscreenState();
}

class _SignscreenState extends State<Signscreen> {
  final formkey = GlobalKey<FormState>();
  String mobilenumber;
   _validation() {
    if (!formkey.currentState.validate()) {
      return;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.yellow[600],
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              iconSize: 40,
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 130,
              width: 900,
              color: Colors.yellow[600],
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:0),
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('images/pic2.jpg'))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Text('Welcome!',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 0, right: 70),
                  child: Text(
                    'ENTER YOUR MOBILE NUMBER',
                    style: TextStyle(fontSize: 21, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Form(
                        key: formkey,
                                              child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.phone_android,
                              color: Colors.blue,
                            ),
                            labelText: 'Mobile Number',
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          validator: (input) => input.length < 11 
                              ? 'The Number is not correct'
                              : Navigator.push(context, MaterialPageRoute(builder: (context)=> Codescreen() )),
                          onSaved: (input) {
                            setState(() {
                              mobilenumber = input;
                              
                            });
                          }
                           
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 300, right: 90),
                        child: Text(
                          'By continuing you will recive an SMS for verification ',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 260, top: 26),
                        child: FlatButton(
                          onPressed: _submit,
                          child: Text('Next'),
                          textColor: Colors.black,
                          highlightColor: Colors.blueGrey,
                          splashColor: Colors.white,
                          color: Colors.yellow[600],
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            )),
          ],
        ));
  }

  void _submit() {
    if (formkey.currentState.validate()) {}
  }
}