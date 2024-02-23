import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'assets/landing1.png',
    'assets/landing2.png',
    'assets/landing3.png',
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        // appBar: AppBar(
        //   backgroundColor: Colors.blue[300]!,
        //   elevation: 0.0,
        //   title: const Text('Home'),
        //   actions: [
        //     IconButton(
        //       onPressed: () {},
        //       icon: const Icon(Icons.menu),
        //     ),
        //   ],
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      CarouselSlider.builder(
                        itemCount: images.length,
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * 0.5,
                          aspectRatio: 1 / 1,
                          viewportFraction: 1.0,
                          autoPlay: true,
                          enlargeCenterPage: false,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                        itemBuilder:
                            (BuildContext context, int index, int realIndex) {
                          return Image.asset(
                            images[index],
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                      Positioned(
                        bottom: 20.0,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: images.map((url) {
                            int index = images.indexOf(url);
                            return Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 2.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? Colors.blue
                                    : Colors.grey[300],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 15,
                          child: IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Trending',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('assets/treding1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/trending2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage('assets/trending3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage('assets/trending4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage('assets/trending5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                            image: DecorationImage(
                              image: AssetImage('assets/trending6.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'States',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('assets/treding1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/trending2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage('assets/trending3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage('assets/trending4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage('assets/trending5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                            image: DecorationImage(
                              image: AssetImage('assets/trending6.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Reels',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('assets/treding1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/trending2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage('assets/trending3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage('assets/trending4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage('assets/trending5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                            image: DecorationImage(
                              image: AssetImage('assets/trending6.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Events',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('assets/treding1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/trending2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage('assets/trending3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage('assets/trending4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage('assets/trending5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                            image: DecorationImage(
                              image: AssetImage('assets/trending6.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Quotes',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('assets/treding1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/trending2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage('assets/trending3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage('assets/trending4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage('assets/trending5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                            image: DecorationImage(
                              image: AssetImage('assets/trending6.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Tweets',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[850],
                          ),
                          width: 250,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'This is a tweet',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[850],
                          ),
                          width: 250,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'This is a tweet',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[850],
                          ),
                          width: 250,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'This is a tweet',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[850],
                          ),
                          width: 250,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'This is a tweet',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[850],
                          ),
                          width: 250,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'This is a tweet',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[850],
                          ),
                          width: 250,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'This is a tweet',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[850],
                          ),
                          width: 250,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'This is a tweet',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Festival and Days',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('assets/treding1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/trending2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage('assets/trending3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage('assets/trending4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage('assets/trending5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                            image: DecorationImage(
                              image: AssetImage('assets/trending6.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Motivational',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('assets/treding1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/trending2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage('assets/trending3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage('assets/trending4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage('assets/trending5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                            image: DecorationImage(
                              image: AssetImage('assets/trending6.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 160,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Cover Photo',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('assets/treding1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 250,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/trending2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 250,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage('assets/trending3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 250,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage('assets/trending4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 250,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage('assets/trending5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 250,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                            image: DecorationImage(
                              image: AssetImage('assets/trending6.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 250,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          backgroundColor: Colors.blue[300]!,
          activeColor: Colors.black,
          color: Colors.white,
          tabBackgroundColor: Colors.blue[100]!,
          tabMargin: EdgeInsets.all(5),
          gap: 8,
          onTabChange: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/home');
            }
            if (value == 1) {
              Navigator.pushNamed(context, '/search');
            }
            if (value == 2) {
              Navigator.pushNamed(context, '/profile');
            }
          },
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          iconSize: 24,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
        ));
  }
}
