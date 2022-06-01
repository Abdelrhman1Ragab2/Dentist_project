import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Entity/User.dart';
import 'Reservation_service.dart';
import 'finsh_confirmation.dart';

class Another_confirm extends StatefulWidget {
  const Another_confirm({Key? key}) : super(key: key);

  @override
  State<Another_confirm> createState() => _Another_confirmState();
}

class _Another_confirmState extends State<Another_confirm> {
  var Name_controller = TextEditingController();
  var Phone_controller = TextEditingController();
  var Age_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 113, 139, 173),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 113, 139, 173),
          leading: Image.asset(
            "assets/images/Picture1.png",
            width: 250,
            height: 250,
          ),
          title: Text("DENTIST"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Reservation_Service()));
                },
                icon: Icon(Icons.arrow_back_rounded)),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Colors.white,
                    child: Text(
                      language ? "Dr.Omnia khaled" : "د.أمنية خالد ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Checkbox(value: check, onChanged:(bool? value){
                        setState(() {
                          check=value;
                        });
                      } ,activeColor: Colors.green,
                        checkColor: Colors.black,

                        // title: Text(language?"iam making reservation on behalf of the another patient"
                        //     :"انا أقوم بالحجز نيابة عن مريض أخر "),
                        //   activeColor: Colors.green,
                        //   checkColor: Colors.black,
                        //   controlAffinity: ListTileControlAffinity.platform,
                      ),
                      Center(
                        child: Text(language?"I am making reservations on behalf\nof another patient"
                            :"انا اقوم بالحجز بالنيابه عن مريض اخر"),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,bottom: 25),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text(language?"full name":"الاسم بالكامل ",
                        style:
                          TextStyle(color: Colors.black,fontSize: 22),),
                          SizedBox(height: 5,),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),

                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,bottom: 25),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text(language?"phone number ":"رقم التلفون",style:
                            TextStyle(color: Colors.black,fontSize: 22),),
                          SizedBox(height: 5,),
                          TextFormField(

                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,bottom: 25),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text(language?"Age":"العمر",style:
                          TextStyle(color: Colors.black,fontSize: 22),),
                          SizedBox(height: 5,),
                          TextFormField(

                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                 his_state.contains("pm to")? Text("your date: $his_day From $his_state",style: TextStyle(
                    fontSize: 18,color: Colors.white
                  ),):Text(""),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Finsh_confirmation()));

                    },
                    child: Text(
                      language?" Next ":" التالي ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    color: Color.fromARGB(255, 16, 30, 62),

                  ),

                ]
            ),
          ),
        ));
  }
}


