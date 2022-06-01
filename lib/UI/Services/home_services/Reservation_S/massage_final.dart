
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dentist/UI/Services/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Entity/User.dart';

class Message_final extends StatefulWidget {


  @override
  State<Message_final> createState() => _Message_finalState();
}

class _Message_finalState extends State<Message_final> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 113, 139, 173),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 139, 173),
        leading:Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Main_page()
                    )
                );
              },
              icon: Icon(Icons.arrow_back_rounded)),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Picture1.png",
              width: 250,
              height: 250,
            ),
            SizedBox(height: 100,),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(language?"Successful confirmation":"تم التسجيل بنجاح ",
            speed:  Duration(milliseconds: 200),
            textStyle: TextStyle(fontSize: 24,
                color:Color.fromARGB(255, 227, 152, 126),
              fontWeight: FontWeight.bold
            )),

          ],

        ),


          ],
        ),
      ),

    );
  }
}
