import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ottmate/ottpage.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var country = ["+91", "+1", "+54", "+374"];
  String pooji = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 223, 226, 230)),
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(8),
          width: 800,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.clear)]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/myimage.jpg'),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Enter your Phone Number",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Text("We will send you the 4 digit verification code")
          ],
        ),
        SizedBox(
          width: 380.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 233, 235),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: DropdownButton(
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("+91"),
                    ),
                    underline: Container(
                      height: 0,
                      color: Color.fromARGB(255, 105, 90, 148),
                    ),
                    items: country.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (pooji) {},
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Mobile",
                      hintText: "Enter mobile Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OttScreen()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "GENERATE OTP",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ))),
        ),
        Container(height: 30),
        Text("-------------------Sign in using------------------",
            style: TextStyle(fontSize: 16)),
        Padding(
          padding: EdgeInsets.fromLTRB(5, 15, 5, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 214, 209, 209)
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/search.png'),
                        ),
                        Text("Google")
                      ],
                    ),
                  )),
              InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 214, 209, 209)
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/face.png'),
                        ),
                        Text("Facebook")
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ])),
    );
  }
}
