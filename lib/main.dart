import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'UI/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp( MaterialApp(
    home: splashScrean(),
    debugShowCheckedModeBanner: false,));
}

