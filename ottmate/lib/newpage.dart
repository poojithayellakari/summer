import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class NewScreen extends StatelessWidget {
  NewScreen({super.key});
 
  @override
  getHttp() async {
    print("poojit");
     final dio = Dio();
    try {
      var response = await dio.get('https://www.google.com');
      print(response.data());
      print("pooji");
    } catch (exception) {
      print(exception);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Image.network(
          "https://images.dog.ceo/breeds/setter-irish/n02100877_306.jpg",
          width: 300,
          height: 250,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
            onTap: () {
              Get.to(getHttp());
            },
            child: Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("Click me")))),
      ),
    ]));
  }
}
