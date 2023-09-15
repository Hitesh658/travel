import 'package:flutter/material.dart';
import 'package:travel/ForgotPassword.dart';
import 'package:travel/Homepage.dart';
import 'package:travel/Register.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xFF2E6BEA);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics:
              NeverScrollableScrollPhysics(), // Added SingleChildScrollView
          child: Column(
            children: [
              Image.network(
                'https://img.freepik.com/free-vector/privacy-policy-concept-illustration_114360-7853.jpg?w=740&t=st=1694789882~exp=1694790482~hmac=0ad760464f085785d8c1233453862e648a5f2b948dab10a3e4d082f94e211814',
                height: 250,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: 1000,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      const Text(
                        "Login Here",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Please enter your credentials.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 13.0,
                                  horizontal: 13.0), // Adjust padding here
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            onChanged: (text) {
                              // Do something with the entered text
                            },
                          )),
                      Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 13.0,
                                  horizontal: 13.0), // Adjust padding here
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            onChanged: (text) {
                              // Do something with the entered text
                            },
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()),
                                );
                                // Handle the tap event here
                              },
                              child: const Text(
                                "Forgot Password? ",
                                style: TextStyle(
                                  color: Colors
                                      .white, // Change color to indicate it's clickable
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: MaterialButton(
                          minWidth: 250,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Adjust border radius here
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(
                                9.0), // Adjust inner padding here
                            child: Text("Login"),
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
                              Text("Don't have an account? "),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()),
                                  );
                                  // Handle the tap event here
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Change color to indicate it's clickable
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                ),
                                child: IconButton(
                                  // Use IconButton for a simpler implementation
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.facebook,
                                    size: 35,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        30.0), // Use BorderRadius.circular to set border radius
                                  ),
                                  child: IconButton(
                                    // Use IconButton for a simpler implementation
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.g_mobiledata_outlined,
                                      size: 35,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
