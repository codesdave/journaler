import 'package:flutter/material.dart';
import 'package:mental_health_advisor/widgets/app_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppTextField(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              textInputType: TextInputType.emailAddress,
              title: "E-mail",
            ),
            const SizedBox(height: 20),
            const AppTextField(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              title: "Password",
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SignUpScreen();
                  }),
                );
              },
              child: const Text(
                "SIGN IN",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
