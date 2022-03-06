import 'package:flutter/material.dart';
import 'package:task3/setting.dart';
import 'package:task3/sign.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              color: Colors.orange[300],
              highlightColor: Colors.yellow,
              splashColor: Colors.white,
              iconSize: 40,
              onPressed: () {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Setting())
                    );
              }
              ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            width: 500,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/pic1.jpg'))),
          ),
          Center(
              child: Text(
            'Hold up!',
            style: TextStyle(
              fontSize: 30,
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Text(
                'You need to sign up or sign in to be able to get offers,track savings,and invite others',
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child:
               InkWell(
                 onTap: (){
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Signscreen())
                    );
               
                 },
                                child: Container(
                   height: 70,
                   width: 140,
                   decoration: BoxDecoration(
                       color: Colors.yellow[600],
                       borderRadius: BorderRadius.circular(40)),
                   child: Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Text(
                           'Sign in  ',
                           style: TextStyle(color: Colors.black, fontSize: 20),
                         ),
                         Icon(
                           Icons.arrow_forward,
                           color: Colors.black,
                         ),
                         
                       ],
                     ),
                     
                   ),
                 ),
                
               ), 
            ),
            
        ],
      ),
    );
  }
}
