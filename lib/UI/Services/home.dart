import 'package:circular_widgets/circular_widgets.dart';
import 'package:dentist/UI/Services/home_services/consultation.dart';
import 'package:dentist/UI/Services/home_services/reconsult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Entity/User.dart';
import 'home_services/offers.dart';
import 'home_services/reservation.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Icon(
                Icons.person_search,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 180,
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
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Reservation()));
                  },
                  child: Text(
                    language ? "Reservation" : "كشف",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.recent_actors_outlined,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 180,
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
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Consultation_i()));
                  },
                  child: Text(
                    language ? "Consultation" : "استشارة",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.group_outlined,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 180,
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
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Reconsult()));
                  },
                  child: Text(
                    language ? "Follow" : "متابعة ",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Icon(
                Icons.sentiment_satisfied_alt_outlined,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10.0, 10.0),
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers()));

                  },
                  child: Text(
                    language ? "Offers" : "عروض",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
