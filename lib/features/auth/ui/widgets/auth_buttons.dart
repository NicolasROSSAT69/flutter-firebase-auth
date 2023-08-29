import 'package:flutter/material.dart';
import '../../auth_service.dart';

class AuthButtons extends StatelessWidget {
  final AuthService authService;

  AuthButtons({required this.authService});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            await authService.signInWithGoogle();
          },
          child: const Text("Se connecter avec Google"),
        ),
        /*ElevatedButton(
          onPressed: () async {
            await authService.signInWithFacebook();
          },
          child: const Text("Se connecter avec Facebook"),
        ),*/
      ],
    );
  }
}
