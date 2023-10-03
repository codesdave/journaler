import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:journaler/firebase_options.dart';
import 'package:journaler/screens/sign_up_screen.dart';

Future<dynamic> main(List<String> args, Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  loadFirebaseSetUpBasedonFlavor(flavor);
  runApp(const MyApp());
}

enum Flavor { dev, prod }

void loadFirebaseSetUpBasedonFlavor(Flavor flavor) {
  if (flavor == Flavor.dev) {
    print('This is dev flavor');
  } else if (flavor == Flavor.prod) {
    print('This is prod flavor');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Journaler',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpScreen(),
    );
  }
}
