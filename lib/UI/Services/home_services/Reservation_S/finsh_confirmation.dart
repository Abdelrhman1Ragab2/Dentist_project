
import 'package:dentist/UI/Services/home_services/Reservation_S/massage_final.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Entity/User.dart';
import 'another_confirm.dart';

class Finsh_confirmation extends StatefulWidget {
  const Finsh_confirmation({Key? key}) : super(key: key);

  @override
  State<Finsh_confirmation> createState() => _Finsh_confirmationState();
}

class _Finsh_confirmationState extends State<Finsh_confirmation> {
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
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Another_confirm()
                    )
                );
              },
              icon: Icon(Icons.arrow_back_rounded)),
        ],
      ),
      body:Container(
        child: Column(

          children: [


            Image.asset(
              "assets/images/Picture1.png",
              width: 250,
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 60),
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
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 30),
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
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Message_final()));

              },
              child: Text(
                language?"Confirm booking ":"تاكيد الحجز ",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Color.fromARGB(255, 227, 152, 126),

            ),
          ],
        ),
      ),

    );
  }
}
