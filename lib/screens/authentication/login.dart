import 'package:autho_app/constns/colors.dart';
import 'package:autho_app/constns/description.dart';
import 'package:autho_app/constns/style.dart';
import 'package:autho_app/services/auth.dart';
import 'package:flutter/material.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  final AuthService _auth = AuthService();

  final _formkey = GlobalKey<FormState>();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgBlack,
        appBar: AppBar(
          title: const Text("Sign In"),
          elevation: 0,
          backgroundColor: bgBlack,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Column(
            children: [
              const Text(
                description,
                style: descriptionStyle,
              ),
              Center(
                child: Image.asset(
                  "assets/images/man.png",
                  height: 200,
                ),
              ),
              Form(
                key: _formkey,
                child: Column(children: [
                  //email
                  TextFormField(
                    validator: (val) =>
                        val?.isEmpty == true ? "Enter a valid Email" : null,
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                  ),
                  //password
                  TextFormField(
                    validator: (val) =>
                        val!.length < 6 ? "Enter a Email address" : null,
                    onChanged: (val) {
                      setState(() {
                        email = val;
                      });
                    },
                  ),
                  //google
                  const Text(
                    "Login with social media",
                    style: descriptionStyle,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/google.png",
                      height: 200,
                    ),
                  ),

                  //register
                  //button
                  //anon
                ]),
              )
            ],
          ),
        ));
  }
}

// ElevatedButton(
//         child: Text("Sign In anymous"),
//         onPressed: () async {
//           dynamic resulut = await _auth.signInAnonymously();
//           if (resulut == Null) {
//             print("error in sign in anon");
//           } else {
//             print("signed in anon");
//             print(resulut.uid);
//           }
//         },
//       ),
