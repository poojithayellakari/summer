import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:ottmate/loginpage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:ottmate/newpage.dart';
=======
import 'package:ottmate/homepage.dart';
import 'package:ottmate/views/auth/loginpage.dart';
import 'package:ottmate/views/navigation.view.dart';
>>>>>>> 453549e6df33f86bea22639cba562c03a71fd764

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
<<<<<<< HEAD
      home: NewScreen(),
=======
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return snapshot.data != null ? BottomNavigationView() : Container();
          }),
>>>>>>> 453549e6df33f86bea22639cba562c03a71fd764
      debugShowCheckedModeBanner: false,
    );
  }
}
