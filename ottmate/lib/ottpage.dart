import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ottmate/loginpage.dart';

class OttScreen extends StatelessWidget {
  const OttScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 255, 255, 255)),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("OTP Verification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter the OTP sent to "),
            Text("+919390703515"),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Icon(Icons.edit))
          ],
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: OtpTextField(
              showFieldAsBox: true,
              borderRadius: BorderRadius.circular(5),
              margin: EdgeInsets.all(5),
              enabledBorderColor: Color.fromARGB(255, 118, 72, 124),
              keyboardType: TextInputType.number,
              mainAxisAlignment: MainAxisAlignment.center,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Didn't receive Otp? "),
            InkWell(
                onTap: () {
                  
                },
                child: Text(
                  "RESEND",
                  style: TextStyle(color: Colors.red),
                ))
          ],
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
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "VERIFY & CONTINUE",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ))),
        ),
        Container(height: 10),
        Text("-------------------Or Sign in using------------------",
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
