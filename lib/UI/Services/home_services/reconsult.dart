
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reconsult extends StatefulWidget {
  const Reconsult({Key? key}) : super(key: key);

  @override
  State<Reconsult> createState() => _ReconsultState();
}

class _ReconsultState extends State<Reconsult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Reconsult"),
      ),
    );
  }
}
