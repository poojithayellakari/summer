import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottmate/homepage.dart';
import 'package:ottmate/views/auth/loginpage.dart';
import 'package:ottmate/views/navigation.view.dart';

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
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return snapshot.data != null ? BottomNavigationView() : Container();
          }),
      debugShowCheckedModeBanner: false,
    );
  }
}
