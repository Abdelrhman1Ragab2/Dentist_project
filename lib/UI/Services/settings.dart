import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Entity/User.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.settings,
              size: 60,
              color: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.blueGrey,
              child: Text(
                language ? "   Settings   " : "  الضبط  ",
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white60,
                  ),
                  child: Center(
                    child: Text(
                      language ? " Change Password " : " تغير كلمة المرور ",
                      style: TextStyle(
                        fontSize: 20,
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white60),
                  child: Center(
                    child: Text(
                      language ? "Call Us" : " اتصل بنا  ",
                      style: TextStyle(
                        fontSize: 20,
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      color: Colors.orange),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white60,
                  ),
                  child: Center(
                    child: Text(
                      language ? " app evaluation " : " تقييم التطبيق ",
                      style: TextStyle(
                        fontSize: 20,
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white60),
                  child: Center(
                    child: Text(
                      language ? " Share the app " : " مشاركة التطبيق ",
                      style: TextStyle(
                        fontSize: 20,
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      color: Colors.orange),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white60,
                  ),
                  child: Center(
                    child: Text(
                      language ? " account suspended " : " ايقاف الحساب ",
                      style: TextStyle(
                        fontSize: 20,
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      "5",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
