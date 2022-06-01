import 'package:dentist/UI/Services/person.dart';
import 'package:dentist/UI/Services/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Auth/sign_in.dart';
import 'home.dart';
class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  var currentIndex=2;
  List<Widget> listScreen=
  [
    Person(),Settings(),Home()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 113, 139, 173),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 113, 139, 173),
          leading: Image.asset(
            "assets/images/Picture1.png",
            width: 250,
            height: 250,
          ),
        title:  Text("DENTIST"),
        actions: [ IconButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>Sing_in()));
        },icon: Icon(Icons.logout)),],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 1, 13, 29),
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },

        elevation: 250,
        selectedItemColor: Colors.orange,
        enableFeedback: true,

        items:
        [
          BottomNavigationBarItem(

            icon: Icon(
              Icons.person,size: 30,color: Colors.white,
            ),
            label: ""
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,size: 30,color: Colors.white,)
                ,label: ""


          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,size: 30,color: Colors.white,),
          label: ""
          ),


        ],
      ),
      body: listScreen[currentIndex],
    );
  }
}
