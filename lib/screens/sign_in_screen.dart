// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: LayoutBuilder(
//             builder: (context, constraints) {
//               if (constraints.maxWidth > 893) {
//                 return Column(
//                   children: [
//                     const Text(
//                       "journaler is a psychoanalyst app",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(25),
//                       child: Card(
//                         shadowColor: Colors.black,
//                         child: Container(
//                           height: 370,
//                           width: 400,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(18),
//                             child: Column(
//                               children: [
//                                 TextFormField(
//                                   decoration: InputDecoration(
//                                     focusColor: Colors.green,
//                                     hoverColor: Colors.black,
//                                     hintText:
//                                         "Enter your email and password to login",
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 14),
//                                 TextFormField(
//                                   decoration: InputDecoration(
//                                     focusColor: Colors.green,
//                                     hoverColor: Colors.black,
//                                     hintText: "Password",
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 14),
//                                 ElevatedButton(
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.green,
//                                     foregroundColor: Colors.white,
//                                     minimumSize:
//                                         const Size(double.infinity, 60),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(7),
//                                     ),
//                                   ),
//                                   child: const Text(
//                                     "Log In",
//                                     style: TextStyle(
//                                       fontSize: 22,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 13),
//                                 const Text(
//                                   "Forgot password?",
//                                   style: TextStyle(
//                                     fontSize: 22,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 Divider(
//                                   thickness: 0.3,
//                                   color: Colors.grey.shade200,
//                                 ),
//                                 const SizedBox(height: 13),
//                                 ElevatedButton(
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.green,
//                                     foregroundColor: Colors.white,
//                                     minimumSize: const Size(250, 60),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(7),
//                                     ),
//                                   ),
//                                   child: const Text(
//                                     "Create Account",
//                                     style: TextStyle(
//                                       fontSize: 22,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               } else {
//                 return Container();
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                "Enter your email and password to login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  shadowColor: Colors.black,
                  child: Container(
                    height: 330,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 13),
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
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
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
                    "Sign In",
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
