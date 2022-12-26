import 'package:flutter/material.dart';

class Homepage01 extends StatefulWidget {
  const Homepage01({Key? key}) : super(key: key);

  @override
  State<Homepage01> createState() => _Homepage01State();
}

class _Homepage01State extends State<Homepage01> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          backgroundColor: Colors.amber[500],
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Welcome!',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.amber,
                  fontFamily: 'Verdana',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            )
          ],
        ),
      ),
    );
  }
}
