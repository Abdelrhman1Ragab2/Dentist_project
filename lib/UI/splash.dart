import 'package:flutter/material.dart';
import 'dart:async';

import 'Auth/first_page.dart';

class splashScrean extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>Mysplash();

}
class Mysplash extends State<splashScrean>
{

  initState()
  { var i=0;
    super.initState();
    Timer(Duration(milliseconds:2000),
            (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>First_page()),);
        }
    );
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 13, 29),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/d96f0e53-acc1-4e1b-8536-5d248dcf6bca.jpg",
                  width: 300,
                ),
                // Text("YOUR DENTIST",style: TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 30,
                //   color: Colors.blueGrey
                // ),),
              ],
            )
        ),
      )
    );
  }

}

