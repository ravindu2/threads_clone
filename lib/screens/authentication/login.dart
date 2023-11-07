import 'package:autho_app/constns/colors.dart';
import 'package:autho_app/constns/description.dart';
import 'package:autho_app/constns/style.dart';
import 'package:autho_app/services/auth.dart';
import 'package:flutter/material.dart';

class Sign_In extends StatefulWidget {
  final Function toggle;
  const Sign_In({Key? key, required this.toggle}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Padding(
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
                      decoration: textInputDecoration,
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter a valid Email" : null,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    //password
                    TextFormField(
                      decoration:
                          textInputDecoration.copyWith(hintText: "Password"),
                      validator: (val) =>
                          val!.length < 6 ? "Enter a Email address" : null,
                      onChanged: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                    ),
                    //google
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login with social media",
                      style: descriptionStyle,
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Image.asset(
                          "assets/images/google.png",
                          height: 50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    //register
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Do not have an account? ",
                          style: descriptionStyle,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          //go to register page
                          onTap: () {
                            widget.toggle();
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: mainBlue, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    //button
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: mainYellow)),
                        child: const Center(
                            child: Text(
                          "LOG IN",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                    //anon
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: mainYellow)),
                        child: const Center(
                            child: Text(
                          "LOGIN AS GUSET",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )),
                      ),
                    )
                  ]),
                )
              ],
            ),
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
