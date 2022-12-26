import 'package:flutter/material.dart';
import 'package:foodesapplication/FoodesApp/homepage01.dart';

class PwChanged extends StatefulWidget {
  const PwChanged({Key? key}) : super(key: key);

  @override
  State<PwChanged> createState() => _PwChangedState();
}

class _PwChangedState extends State<PwChanged> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PasswordChanged(),
    );
  }
}
class PasswordChanged extends StatefulWidget {
  const PasswordChanged({Key? key}) : super(key: key);

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(120.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Password\n changed!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  Image.asset(
                    'assets/4.png',
                      height: 300,
                      width: 600,
                      fit: BoxFit.fitWidth,
                  ),
                ],
              ),
              const SizedBox(height: 120),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const Homepage01()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[500],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.black),
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
