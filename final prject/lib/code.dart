import 'package:flutter/material.dart';

class Codescreen extends StatefulWidget {
  @override
  _CodescreenState createState() => _CodescreenState();
}

class _CodescreenState extends State<Codescreen> {
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
                      padding: const EdgeInsets.only(top: 0),
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
                  padding: const EdgeInsets.only(top: 80, left: 10, right: 70),
                  child: Text(
                    'ENTER 6-DIGIT CODE WE SENT YOU AT YOUR NUMBER',
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
                                Icons.sms,
                                color: Colors.blue,
                              ),
                              labelText: 'Code....',
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            validator: (input) => input.length < 6
                                ? 'The Code is not correct'
                                : null,
                            onSaved: (input) {
                              setState(() {
                                mobilenumber = input;
                              });
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 300, right: 190),
                        child: Text(
                          'Resend code in 50 sec',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 260, top: 10),
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
