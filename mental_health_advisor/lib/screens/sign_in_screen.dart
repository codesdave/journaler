import 'package:flutter/material.dart';
import 'package:mental_health_advisor/screens/sign_up_screen.dart';
import 'package:mental_health_advisor/widgets/app_textfield.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
              title: "E-mail",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 15),
            const AppTextField(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              title: "Password",
              textInputType: TextInputType.visiblePassword,
            ),
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
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Forgot your password ?",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
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
                "SIGN UP",
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
