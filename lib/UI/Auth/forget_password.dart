import 'package:dentist/UI/Auth/New_pass.dart';
import 'package:dentist/UI/Auth/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Entity/User.dart';

class Forget_password extends StatefulWidget {
  const Forget_password({Key? key}) : super(key: key);

  @override
  State<Forget_password> createState() => _Forget_passwordState();
}

class _Forget_passwordState extends State<Forget_password> {
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
                  context, MaterialPageRoute(builder: (context) => Sing_in()));
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Color.fromARGB(255, 1, 13, 29),
        title: Text("DENTIST"),
        actions: [Icon(Icons.home_work_outlined)],
      ),
      body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 113, 139, 173),
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
                  Text(language ? "Forget password?" : "نسيت كلمة السر؟",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      color: Colors.white,
                      child: TextFormField(
                        controller: confirm_password_controller,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: language ? "phone" : "رقم التلفون",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  x
                      ? Text(
                          language
                              ? "A message will be sent to your phone number now,\nplease type the code sent to you to reset the password."
                              : ""
                                  "سوف يتم ارسال رمز تأكيدي الى هاتفك ."
                                  " الرجاء اعادة كتابته هنا ل أعادة تسديل حسابك",
                          maxLines: 5,
                        )
                      : Text(""),
                  MaterialButton(
                    onPressed: () {
                      if (confirm_password_controller.text == profile_phone) {
                        setState(() {
                          x = true;
                        });
                      }

                      if (confirm_password_controller.text == "000000")
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => New_pass()));
                        });
                    },
                    child: Text(
                      language ? " OK" : "تأكيد",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Color.fromARGB(255, 1, 13, 29),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("$massage",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
          )),
    );
  }
}
