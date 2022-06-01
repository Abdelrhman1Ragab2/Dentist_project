
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Entity/User.dart';
import 'forget_password.dart';

class New_pass extends StatefulWidget {
  const New_pass({Key? key}) : super(key: key);

  @override
  State<New_pass> createState() => _New_passState();
}

class _New_passState extends State<New_pass> {
  var National_id_controller = TextEditingController();
  var new_password_controller = TextEditingController();
  var confirm_password_controller = TextEditingController();

  var formkey = GlobalKey<FormState>();
  String massage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Forget_password()));
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Color.fromARGB(255, 1, 13, 29),
        title: Text("DENTIST"),
        actions: [Icon(Icons.home_work_outlined)],
      ),
      body: Container(
          decoration: BoxDecoration(
            color:Color.fromARGB(255, 113, 139, 173),
          ),
          width: double.infinity,
          height: double.infinity,

          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "assets/images/Picture1.png",
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      color: Colors.white,
                      child: TextFormField(
                        controller: National_id_controller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: language?"New Password":"رقم سري جديد",
                          hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                          prefixIcon:
                              Icon(Icons.password_rounded, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      color: Colors.white,
                      child: TextFormField(
                        controller: new_password_controller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: language?"Confirm pasword":"تأكيد كلمة السر",
                          hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                          prefixIcon:
                              Icon(Icons.password_rounded, color: Colors.black),
                        ),
                      ),
                    ),
                  )

                  ,MaterialButton(
                    onPressed: () {

                      if( new_password_controller.text==National_id_controller.text)
                      {


                          profile_pass=new_password_controller.text;
                          setState(() {
                            mass_new_pass= language?"Changed successfully":"تم التغير بنجاح";
                          });

                      }

                    },
                    child: Text(
                      language?" OK":"تأكيد",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Color.fromARGB(255, 1, 13, 29),
                  ),
                  SizedBox(height: 10,),
                  Text(mass_new_pass)

                ],
              ),
            ),
          )),
    );
  }
}
