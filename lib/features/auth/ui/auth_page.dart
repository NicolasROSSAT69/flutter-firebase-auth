import 'package:firebase_auth_flutter/features/auth/ui/widgets/auth_buttons.dart';
import 'package:flutter/material.dart';
import '../auth_service.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Authentification"),
      ),
      body: Center(
        child: AuthButtons(authService: _authService),
      ),
    );
  }
}
