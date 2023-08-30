import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_flutter/features/auth/ui/widgets/signin/auth_signin.dart';
import 'package:firebase_auth_flutter/features/auth/ui/widgets/signup/auth_signup.dart';
import 'package:flutter/material.dart';
import 'core/firebase_initializer.dart';
import 'features/auth/ui/auth_page.dart';
import 'features/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Firebase Test',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.data == null) {
              // L'utilisateur n'est pas connecté
              return AuthPage();
            } else {
              // L'utilisateur est connecté
              return const HomePage();
            }
          } else {
            // Le flux n'est pas encore prêt
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
