import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:ottmate/controllers/auth/authentication.controller.dart';
import 'package:ottmate/ottpage.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var country = ["+91", "+1", "+54", "+374"];
  String pooji = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 85,
                  backgroundImage: AssetImage('assets/myimage.jpg'),
                )
              ],
            ),
          ),
          Column(
            children: const [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
                child: Text("Enter your Phone Number",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Text("We will send you the 4 digit verification code")
            ],
          ),
          SizedBox(
            width: 380.0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
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
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
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
                        "Generate OTP",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ))),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 10),
            child: Text("-------------------Sign in using------------------",
                style: TextStyle(fontSize: 16, color: Colors.grey)),
          ),
          SignInButton(
            Buttons.Google,
            onPressed: () {
              AuthenticationController().googleSignIn();
            },
          ),
          SizedBox(
            height: 10,
          ),
          SignInButton(
            Buttons.Facebook,
            onPressed: () {},
          )
        ]),
      )),
    );
  }
}
