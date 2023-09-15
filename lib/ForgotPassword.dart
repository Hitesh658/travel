import 'package:flutter/material.dart';
import 'package:travel/Login.dart';
import 'package:travel/Register.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xFF2E6BEA);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          physics:
              NeverScrollableScrollPhysics(), // Added SingleChildScrollView

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://img.freepik.com/free-vector/forgot-password-concept-illustration_114360-1123.jpg?w=740&t=st=1694790235~exp=1694790835~hmac=7d6ed3fbc27f19472915dfe01522a83a63b29f914eabf81b333da96f2f8b5ac0',
                  height: 250,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12, 0, 0),
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 13.0,
                            horizontal: 13.0), // Adjust padding here
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                            color: color,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Enter your Email',
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      onChanged: (text) {
                        // Do something with the entered text
                      },
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: MaterialButton(
                    minWidth: 250,
                    color: color,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust border radius here
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                          9.0), // Adjust inner padding here
                      child: Text(
                        "Send OTP",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center horizontally
                      children: [
                        Text("Want to try again? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                            // Handle the tap event here
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color:
                                  color, // Change color to indicate it's clickable
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
