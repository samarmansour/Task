import 'package:flutter/material.dart';
import 'package:task3/Privacy.dart';
import 'package:task3/Terms_of_use.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Text(
              'Preferences',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(children: [
                IconButton(
                    icon: Icon(Icons.language),
                    color: Colors.orange[400],
                    iconSize: 40,
                    onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(right: 177, top: 0),
                  child: Text(
                    'Change language',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      color: Colors.orange,
                      iconSize: 20,
                      onPressed: () {}),
                ),
              ]),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(children: [
                IconButton(
                    icon: Icon(Icons.collections_bookmark),
                    color: Colors.orange[400],
                    iconSize: 40,
                    onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(right: 177, top: 0),
                  child: Text(
                    'Terms Of use',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.orange,
                        iconSize: 20,
                        onPressed: () {
                           Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Terms())
                    );
                        }),
                  ),
                ),
              ]),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(children: [
                IconButton(
                    icon: Icon(Icons.security),
                    color: Colors.orange[400],
                    iconSize: 40,
                    onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(right: 177, top: 0),
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child:
                   Padding(
                     padding: const EdgeInsets.only(left:30),
                     child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.orange,
                        iconSize: 20,
                        onPressed: () {
                                 Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Privacy())
                    );
                        }),
                   ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
