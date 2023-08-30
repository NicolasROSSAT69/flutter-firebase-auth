import 'package:firebase_auth_flutter/features/auth/ui/widgets/signup/auth_form_signup.dart';
import 'package:firebase_auth_flutter/features/auth/ui/widgets/signup/auth_header_signup.dart';
import 'package:flutter/material.dart';

import '../../../auth_service.dart';
import '../auth_buttons.dart';

class AuthSignup extends StatefulWidget {
  const AuthSignup({super.key});

  @override
  State<AuthSignup> createState() => _AuthSignupState();
}

class _AuthSignupState extends State<AuthSignup> {

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              const AuthHeaderSignup(),
              //AuthFormSigninEmail(authService: _authService),
              AuthFormSignup(authService: _authService),
              AuthButtons(authService: _authService),
            ],
          )
      ),
    );
  }
}
