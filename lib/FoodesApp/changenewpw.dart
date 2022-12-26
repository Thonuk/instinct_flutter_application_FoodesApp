import 'package:flutter/material.dart';
import 'package:foodesapplication/FoodesApp/passwordchange.dart';

class ChangeNewPassword extends StatefulWidget {
  const ChangeNewPassword({Key? key}) : super(key: key);

  @override
  State<ChangeNewPassword> createState() => _ChangeNewPasswordState();
}

class _ChangeNewPasswordState extends State<ChangeNewPassword> {
  bool hidePassword = true;

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
                'Change \nNew Password',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 100),
              SizedBox(
                child: TextField(
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 22,
                  ),
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    labelText: 'NEW PASSWORD',
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 15),
                    suffixIcon: IconButton(
                      icon: hidePassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: TextField(
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 22,
                  ),
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    labelText: 'NEW PASSWORD',
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 15),
                    suffixIcon: IconButton(
                      icon: hidePassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
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
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const PasswordChanged()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[500],
                  ),
                  child: const Text(
                    'Change Password',
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
