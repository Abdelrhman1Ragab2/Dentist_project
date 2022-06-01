
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Entity/User.dart';
import '../home.dart';
import 'Reservation_S/Reservation_service.dart';

class Reservation extends StatefulWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>Home()));
        },icon: Icon(Icons.arrow_back)),
        backgroundColor: Color.fromARGB(255, 113, 139, 173),
        title: Center(child: Text("Reservation")),
        actions: [Icon(Icons.home_work_outlined),
        SizedBox(width: 10,)],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 113, 139, 173),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: language?MainAxisAlignment.start:MainAxisAlignment.end,
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
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Container(
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
                      },
                      child: Text(
                        language ? "Reservation" : "كشف",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                  shape: BoxShape.rectangle
                ),

                child: Row(
                  mainAxisAlignment: language?MainAxisAlignment.start:MainAxisAlignment.end,
                  children: [
                    Text(language?"Prise : 100 ":"سعر الكشف : 100",
                      style: TextStyle(
                            fontSize: 22,
                        color: Colors.black
                    ),),
                    SizedBox(width: 10,),
                    Icon(Icons.account_balance_wallet_outlined,size: 40,),

                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,

                ),

                child: Row(

                  mainAxisAlignment: language?MainAxisAlignment.start:MainAxisAlignment.end,
                  children: [
                    Text(language?"Waitng Time : 22m":"وقت الانتظار : 22د : ",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black
                      ),),
                    SizedBox(width: 10,),
                    Icon(Icons.access_time_rounded,size: 40,),
                  ],

                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle
                ),

                child: Row(
                  mainAxisAlignment: language?MainAxisAlignment.start:MainAxisAlignment.end,
                  children: [
                    Text(language?"Location : Elmohandsen - Geza ":"العنوان : المهندسين-الجيزه ",
                      maxLines: 4,

                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,

                      ),),
                    Icon(Icons.location_on_outlined),
                  ],

                ),
              ),
            ),


            SizedBox(height: 50,),
            Container(
              height: 3,
              color: Colors.white,
            ),
            SizedBox(height: 30),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Reservation_Service()));

              },
              child: Text(
               language? "Book your appointment":" احجز موعدك من هنا ",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.black45,

            ),

            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,bottom: 10,top: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle
                ),

                child: Row(
                  mainAxisAlignment: language?MainAxisAlignment.start:MainAxisAlignment.end,
                  children: [
                    Text(language?"Clinic evaluation : 5/5 ":"تقييك العيادة : 5/5 ",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black
                      ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle
                ),

                child: Row(
                  mainAxisAlignment: language?MainAxisAlignment.start:MainAxisAlignment.end,
                  children: [
                    Text(language?"Assistant Rating : 5/5 ":"تقييك المساعد : 5/5 ",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black
                      ),),

                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
