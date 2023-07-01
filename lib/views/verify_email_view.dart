import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerfiyEmailView extends StatefulWidget {
  const VerfiyEmailView({super.key});

  @override
  State<VerfiyEmailView> createState() => _VerfiyEmailViewState();
}

class _VerfiyEmailViewState extends State<VerfiyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify email'),
      ),
      body: Column(
        children: [
          const Text('Please verify your email address'),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
              if (user == null) {
                print('User is null');
              }
            },
            child: const Text('Send email verification'),
          )
        ],
      ),
    );
  }
}
