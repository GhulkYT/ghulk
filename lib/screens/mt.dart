import 'package:flutter/material.dart';

class ShowInfo extends StatefulWidget {
  const ShowInfo({Key? key}) : super(key: key);

  @override
  _ShowInfoState createState() => _ShowInfoState();
}

class _ShowInfoState extends State<ShowInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Name"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, //remove this when you add image.
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('images/Default_pfp.jpg'),
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.grey,
          ),
          Container(
            height: 200,
            color: Colors.red,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Info'),
                    Text('Critic'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
