import 'package:dentist/Entity/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Services/main_page.dart';
import 'first_page.dart';
import 'forget_password.dart';

class Sing_in extends StatefulWidget {
  const Sing_in({Key? key}) : super(key: key);

  @override
  State<Sing_in> createState() => _Sing_inState();
}

class _Sing_inState extends State<Sing_in> {
  var email_controller = TextEditingController();
  var password_controller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  String sign_massage="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>First_page()));
        },icon: Icon(Icons.arrow_back)),
        backgroundColor: Color.fromARGB(255, 1, 13, 29),
        title: Center(child: Text("DENTIST")),
        actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Main_page()));
        }, icon: Icon(Icons.home_work_outlined))],
      ),
      body: Container(
          decoration: BoxDecoration(color:
          Color.fromARGB(255, 113, 139, 173),
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
                    height: 40,
                  ),
                  Image.asset(
                    "assets/images/Picture1.png",
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      color: Colors.white,
                      child: TextFormField(
                        controller: email_controller,
                        keyboardType: TextInputType.emailAddress,

                        decoration: InputDecoration(

                          hintText: language?"phone oe name":"رقم االتلفون او الاسم",
                          hintStyle: TextStyle(color: Colors.black, fontSize: 18,
                          ),
                            labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      color: Colors.white,
                      child: TextFormField(
                        controller: password_controller,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: language?"Password":"كلمة المرور",
                          hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                          labelStyle: TextStyle(color: Colors.black)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      var email=email_controller.text;
                      var pass=password_controller.text;
                      for(int i=0;i<=USERS.length-1; i++)
                        {
                          if(USERS[i].email==email && USERS[i].password==pass)
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Main_page()));
                              break;
                            }
                          else{
                            setState(() {
                              sign_massage=language?"not found this user":"مستخدم خاطئ";
                            });

                          }
                        }

                    },
                    child: Text(
                      language?"Sign in":"تسجيل الدخول",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    color: Color.fromARGB(255, 1, 13, 29),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("$sign_massage",style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),),
                  SizedBox(height: 2,),
                  TextButton(onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Forget_password()));


                  }, child: Text(language?"Forget password?":"نسيت كلمة السر؟",style: TextStyle(color:

                  Colors.black,
                      fontSize: 18))),
                ],
              ),
            ),
          )),
    );
  }
}
