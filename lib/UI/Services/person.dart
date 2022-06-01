
import 'package:dentist/Entity/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_services/Reservation_S/Reservation_service.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container(
           width: double.infinity,
           height: double.infinity,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(height: 15,),
               Icon(
                 Icons.person,
                 size: 60,
                 color: Colors.black,
               ),
               SizedBox(
                 height: 15,
               ),
               Container(
                 color: Colors.blueGrey,
                 child: Text(
                   language ? "   My Account   " : "  حسابي  ",
                   style: TextStyle(fontSize: 26, color: Colors.black),
                 ),
               ),
               SizedBox(height: 30,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [

                       Container(
                         width: 200,
                         height: 40,
                         decoration: BoxDecoration(
                           boxShadow: [
                             BoxShadow(
                               offset: Offset(10.0, 10.0),
                               color: Colors.black.withOpacity(0.5),
                               spreadRadius: 7,
                               blurRadius: 10,
                             )
                           ],
                           borderRadius: BorderRadius.all(Radius.circular(20),
                           ),
                           color: Colors.white60,
                         ),
                         child: Center(
                           child: Text(
                             language?"My Data":"بياناتي",
                             style: TextStyle(
                               fontSize: 25,
                             ),
                           ),
                         ),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       Container(
                         width: 60,
                         height: 60,
                         decoration: BoxDecoration(
                           boxShadow: [
                             BoxShadow(
                               offset: Offset(10.0, 10.0),
                               color: Colors.black.withOpacity(0.5),
                               spreadRadius: 7,
                               blurRadius: 10,
                             )
                           ],
                           borderRadius: BorderRadius.all(Radius.circular(40),
                           ),
                           color: Colors.orange,
                         ),
                         child: Center(
                           child: Text(
                              "1",
                             style: TextStyle(
                               fontSize: 25,
                               color: Colors.white,
                             ),
                           ),
                         ),
                       )
                     ],
                   ),
               SizedBox(height: 30,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                   Container(
                     width: 200,
                     height: 40,

                     decoration: BoxDecoration(

                       boxShadow: [
                         BoxShadow(
                           offset: Offset(10.0, 10.0),
                           color: Colors.black.withOpacity(0.5),
                           spreadRadius: 7,
                           blurRadius: 10,
                         )
                       ],
                       borderRadius: BorderRadius.all(Radius.circular(20),
                       ),
                       color: Colors.white60
                     ),
                     child: Center(
                       child: Text(
                         language?"  My appointment  ":"  مواعيدي  ",
                         style: TextStyle(
                           fontSize: 25,
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                   Container(
                     width: 60,
                     height: 60,
                     decoration: BoxDecoration(
                       boxShadow: [
                         BoxShadow(
                           offset: Offset(10.0, 10.0),
                           color: Colors.black.withOpacity(0.5),
                           spreadRadius: 7,
                           blurRadius: 10,
                         )
                       ],
                       borderRadius: BorderRadius.all(Radius.circular(40),
                       ),
                       color: Colors.orange
                     ),
                     child: Center(
                       child: Text(
                         "2",
                         style: TextStyle(
                           fontSize: 25,
                           color: Colors.white
                         ),
                       ),
                     ),
                   )
                 ],
               ),
                 ],
               )


    );
  }




}
