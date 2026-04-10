import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'register_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();
  final auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
                controller: email,
                decoration: const InputDecoration(labelText: 'Email')),
            TextField(
                controller: password,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final user = await auth.login(email.text, password.text);
                if (user != null) {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => HomeScreen()));
                }
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => RegisterScreen())),
              child: const Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}
