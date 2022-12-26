import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodesapplication/FoodesApp/changenewpw.dart';

class Code_Verification extends StatefulWidget {
  const Code_Verification({Key? key}) : super(key: key);

  @override
  State<Code_Verification> createState() => _Code_VerificationState();
}

class _Code_VerificationState extends State<Code_Verification> {
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
                'Code \nVerification',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  _otpTextField(),
                  _otpTextField(),
                  _otpTextField(),
                  _otpTextField(),
                ],
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const ChangeNewPassword()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[500],
                  ),
                  child: const Text(
                    'Verification',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive the code?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Re-send(32)',
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

class _otpTextField extends StatelessWidget {
  const _otpTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: const InputDecoration(hintText:'0',hintStyle: TextStyle(color: Colors.grey)),
        onSaved: (value) {},
      ),
    );
  }
}
