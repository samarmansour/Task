import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Foxerrs',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.yellow[600],
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            iconSize: 40,
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: ListView(
        children: <Widget>[
          Text(
            '   Use of app',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              '1.You are not entitled to use this App except in strict compliance with the T&C in all events in a legitimate manner; which includes compliance with the applicable laws, regulations, and conditions as may be applicable within the Arab Republic of Egypt from time to time.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              '2.You are not entitled to use this App except in strict compliance with the T&C in all events in a legitimate manner; which includes compliance with the applicable laws, regulations, and conditions as may be applicable within the Arab Republic of Egypt from time to time.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              '3.You are not entitled to use this App except in strict compliance with the T&C in all events in a legitimate manner; which includes compliance with the applicable laws, regulations, and conditions as may be applicable within the Arab Republic of Egypt from time to time.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              '4.You are not entitled to use this App except in strict compliance with the T&C in all events in a legitimate manner; which includes compliance with the applicable laws, regulations, and conditions as may be applicable within the Arab Republic of Egypt from time to time.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              '5.You are not entitled to use this App except in strict compliance with the T&C in all events in a legitimate manner; which includes compliance with the applicable laws, regulations, and conditions as may be applicable within the Arab Republic of Egypt from time to time.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text('6.You are not entitled to use this App except in strict compliance with the T&C in all events in a legitimate manner; which includes compliance with the applicable laws, regulations, and conditions as may be applicable within the Arab Republic of Egypt from time to time.',style: TextStyle(fontSize: 20,),
             ),
          ) ],
      ),
    );
  }
}
