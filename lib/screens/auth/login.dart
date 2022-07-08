import 'package:flutter/material.dart';
import 'package:ghulk/screens/welcome.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'G.H.U.L.K.',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Login',
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
                        Icons.lock,
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Welcome()));
                      }),
                ),
              ))
        ],
      )),
    );
  }
}