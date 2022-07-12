import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'welcome.dart';
import 'mt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G.HULK"),
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1300,
          child: Column(
            children: [
              Flexible(
                child: Container(
                  color: Colors.blueGrey,
                  child: ListView(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(),
                        items: [
                          //1st Image of Slider
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ShowInfo()));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://picsum.photos/250?image=9'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //5th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://scontent.cdninstagram.com/v/t51.39111-15/290550700_813438150038656_7263627785515424686_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5a057b&_nc_ohc=3LsRnUNOLUAAX-2m91R&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.cdninstagram.com&oh=02_ARrWWb7CNLsrThKkp6g4GPAYp-w8hPFrd7Mn-_vSsIbj9g&oe=62CB0BEB"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              color: Colors.lightGreen,
                              child: ListView.builder(
                                itemCount: 30,
                                itemBuilder: (_, i) =>
                                    ListTile(title: Text("List2: $i")),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Flexible(
                  child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.orange,
                  ),
                ],
              )),
              const SizedBox(
                height: 29,
              ),
              Flexible(
                  child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.orange,
                  ),
                ],
              )),
              const SizedBox(
                height: 29,
              ),
              Flexible(
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      color: Colors.red,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.green,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Flexible(
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      color: Colors.red,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.green,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
