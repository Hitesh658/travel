import 'package:flutter/material.dart';
import 'package:travel/Login.dart';

class Register extends StatelessWidget {
  const Register({Key? key});

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xFF2E6BEA);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics:
              const NeverScrollableScrollPhysics(), // Added SingleChildScrollView
          child: Column(
            children: [
              Image.network(
                'https://global-uploads.webflow.com/5ea18d0b275cbabb64d3b56c/61e16857157220fd6d1fadfb_How%20to%20build%20the%20right%20company%20culture.png',
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
                        "Register Here",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Please enter your registration details.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 13.0,
                                  horizontal: 13.0), // Adjust padding here
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide: BorderSide(
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
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 13.0,
                                  horizontal: 13.0), // Adjust padding here
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide: BorderSide(
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
                          padding: const EdgeInsets.only(top: 25.0),
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 13.0,
                                  horizontal: 13.0), // Adjust padding here
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            onChanged: (text) {
                              // Do something with the entered text
                            },
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: MaterialButton(
                          minWidth: 250,
                          color: Colors.white,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Adjust border radius here
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(
                                9.0), // Adjust inner padding here
                            child: Text("Register"),
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
                              const Text("Already have an account? "),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()),
                                  );
                                  // Handle the tap event here
                                },
                                child: const Text(
                                  "Login",
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
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                ),
                                child: IconButton(
                                  // Use IconButton for a simpler implementation
                                  onPressed: () {},
                                  icon: const Icon(
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
                                    icon: const Icon(
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
