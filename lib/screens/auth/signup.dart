import 'package:flutter/material.dart';

import '../homescreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'G.HULK',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Sign Up',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.teal.shade100,
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            color: Colors.white70,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: TextField(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white70,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: TextField(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white70,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: Text(
                          'UserName',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
              child: ListTile(
                title: Center(
                  child: TextButton(
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro'),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }),
                ),
              ))
        ],
      )),
    );
  }
}
