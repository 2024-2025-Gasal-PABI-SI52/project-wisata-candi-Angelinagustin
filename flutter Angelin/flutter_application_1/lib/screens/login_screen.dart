import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          padding: const EdgeInsets.all(16),
          child: Column{
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: 1.LOGO APLIKASI
              SizedBox(
                width: 150,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('images/flutter.png'),
                ),
              ),
              //TODO: 2.TEXTFIELD EMAIL
              const SizeBox(height :16),
              TextField{
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    labelText: 'Email'),
                  ),
                ),
              },
              //TODO: 3. TEXTFIELD PASSWORD
              const SizeBox(height :16),
              TextField{
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    labelText: 'Password'),
                  ),
                  obscureText: true,
                ),
              },
              //TODO: 4. TOMBOL LOGIN
              const SizeBox(height :16),
              ElevatedButton (onPressed: {} {}, child: const Text ('Login'))
            ]
          }
        ),
      )
    );
  }
}
