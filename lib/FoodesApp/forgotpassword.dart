import 'package:flutter/material.dart';
import 'package:foodesapplication/FoodesApp/codeverification.dart';
import 'foodes_app.dart';

class ForgotPw extends StatefulWidget {
  const ForgotPw({Key? key}) : super(key: key);

  @override
  State<ForgotPw> createState() => _ForgotPwState();
}

class _ForgotPwState extends State<ForgotPw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Forgot \nPassword?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 100),
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Please provide your email to reset your password,\nplease don't share any data to other people.",
                    style: TextStyle(color: Colors.grey,fontSize: 10),),
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const Code_Verification()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[500],
                  ),
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Remember Now?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const Homepage()));
                    },
                    child: const Text(
                      'Login Here',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 130),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Need Help?',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
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
