import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottmate/loginpage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:ottmate/newpage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.d
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'OTT Mate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
