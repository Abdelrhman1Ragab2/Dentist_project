
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../Entity/User.dart';
import '../../../../Entity/history.dart';
import '../reservation.dart';
import 'another_confirm.dart';

class Reservation_Service extends StatefulWidget {
  const Reservation_Service({Key? key}) : super(key: key);

  @override
  State<Reservation_Service> createState() => _Reservation_ServiceState();
}


class _Reservation_ServiceState extends State<Reservation_Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(
              context, MaterialPageRoute(builder: (context) => Reservation()));
        }, icon: Icon(Icons.arrow_back)),
        backgroundColor: Color.fromARGB(255, 113, 139, 173),
        title: Center(child: Text(language?"Reservation":"الكشف ")),
        actions: [Icon(Icons.home_work_outlined),
          SizedBox(width: 10,)],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 113, 139, 173),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.insert_drive_file_outlined, size: 30,
                    color: Colors.white,),
                  SizedBox(width: 10,),
                  Text(language?"Choose your reservation":"اختر موعدك ",
                    style: TextStyle(fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 22),),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 250,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          build_item(List_History[index], index),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 20,),
                      itemCount: List_History.length),
                ),
              ),

              Center(
                child: Text(language?"Entry on a first-come-first-served basis":"الدخول باسبقية الحضور ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,

                  ),),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  if(confirm && can_confirm) {
                    _showMyDialog(language?"Successful":"تم بنجاح",
                        "your date is $his_day \n From $his_state  .\n Thanks.",
                        language?"Ok":"تم");
                    confirm=false;


                  }
                  else if(confirm==true && can_confirm==false){
                    _showMyDialog(language?"faild":"حدث خطأ",
                        language?"This day $his_day  No appointment available.\n Thanks."
                            :"",
                        language?"Ok":"تم");

                  }
                  else{
                    _showMyDialog(language?"faild":"حدث خطأ ",
                        "you didn't choose any date .\n please try again \n Thanks.",
                        language?"Ok":"تم");
                  }


                },
                child: Text(
                  language?"Confirm booking ":"تاكيد الحجز ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: Color.fromARGB(255, 16, 30, 62),

              ),
              SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Another_confirm()));


                },
                child: Text(
                  language?" reserv for Another person":"حجز لشخص اخر  ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: Color.fromARGB(255, 16, 30, 62),

              ),
            ],
          ),
        ),
      ),

    );
  }

  Widget build_item(History history, int index) {
    return Container(

      child: Column(
        children: [
          Container(
            height: 50, width: 150
            , decoration: BoxDecoration(

              color: Color.fromARGB(255, 16, 30, 62),
          ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${history.day}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                )
              ],
            ),
          ),
          Container(
            height: 100, width: 150,
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 150
                  , child: Center(
                  child: Text("${history.state}", style: TextStyle(
                    color: Color.fromARGB(210, 8, 16, 78),
                    fontSize: 20,
                  ),
                  ),
                ),
                )
              ],
            ),
          ),
          Container(
            width: 150, height: 50,
            decoration: BoxDecoration(
                color: history.color_State
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(onPressed: (){
                  setState(() {
                    confirm=true;
                    List_History[index].color_State=Colors.red;
                    his_day=List_History[index].day;
                    his_state=List_History[index].state;
                    can_confirm=List_History[index].can_confirm;

                  });
                },
                  child: Text(language?"reserv":"احجز", style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      overflow: TextOverflow.visible
                  ),)
                  ,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialog(String title,String body,String buttom) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.green,
          elevation: 100,
          title:  Text("$title"),
          content: SingleChildScrollView(
            child: ListBody(
              children:  <Widget>[
                Text('$body',style: TextStyle(color: Color.fromARGB(210, 8, 16, 78),),),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                TextButton(
                  child:  Text('$buttom',style: TextStyle(color: Colors.white),),
                  onPressed: () {


                    Navigator.of(context).pop();

                  },
                ),


              ],
            ),
          ],
        );
      },
    );
  }



}