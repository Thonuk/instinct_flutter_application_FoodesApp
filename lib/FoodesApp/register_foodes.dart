import 'package:flutter/material.dart';


import 'foodes_app.dart';
import 'forgotpassword.dart';


class RegisterFood extends StatefulWidget {
  const RegisterFood({Key? key}) : super(key: key);

  @override
  State<RegisterFood> createState() => _RegisterFoodState();
}

class _RegisterFoodState extends State<RegisterFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Register \nNew account',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 35),
              const TextField(
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                ),
                decoration: InputDecoration(
                  labelText: 'FULL NAME',
                  labelStyle:
                  TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                  suffixIcon: Icon(
                    Icons.credit_card_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              const TextField(
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                ),
                decoration: InputDecoration(
                  labelText: 'EMAIL',
                  labelStyle:
                  TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              const TextField(
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                ),
                decoration: InputDecoration(
                  labelText: 'PHONE NUMBER',
                  labelStyle:
                  TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                  suffixIcon: Icon(
                    Icons.phone_android_sharp,
                    color: Colors.black,
                  ),
                ),
              ),
              const TextField(
                obscureText: true,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  labelStyle:
                  TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                  suffixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const ForgotPw()));},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[500],
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black),
                  ),
                  child: const Text(
                    'Sign up with Facebook',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const Homepage()));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

