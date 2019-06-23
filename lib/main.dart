import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),

      body: Stack(

        children: <Widget>[
          Container(
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5)
            
            ),
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Stack(
              children: <Widget>[
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: ' please writer your name here',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5))

                  ),
            
            ),
            SizedBox(height:100),
            TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: ' please writer your password here',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5))
                  ),
            
            ),
              ],
            ),
          )
          
        ],
      ),

    );
  }

}
