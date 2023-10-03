import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Create an account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  shadowColor: Colors.black,
                  child: Container(
                    height: 370,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              focusColor: Colors.green,
                              hoverColor: Colors.black,
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Full name",
                              border: InputBorder.none,
                            ),
                          ),
                          const SizedBox(height: 14),
                          TextFormField(
                            decoration: const InputDecoration(
                              focusColor: Colors.green,
                              hoverColor: Colors.black,
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Email Address",
                              border: InputBorder.none,
                            ),
                          ),
                          const SizedBox(height: 14),
                          TextFormField(
                            decoration: const InputDecoration(
                              focusColor: Colors.green,
                              hoverColor: Colors.black,
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Password",
                              border: InputBorder.none,
                            ),
                          ),
                          const SizedBox(height: 14),
                          TextFormField(
                            decoration: const InputDecoration(
                              focusColor: Colors.green,
                              hoverColor: Colors.black,
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Confirm Password",
                              border: InputBorder.none,
                            ),
                          ),
                          const SizedBox(height: 14),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blue.shade800,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 400,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                    // minimumSize: const Size(250, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: const Text(
                    "Sign UP",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
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
