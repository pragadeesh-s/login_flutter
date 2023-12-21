import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Lead'),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 0.0),
              height: 100,
              width: 100,
              //color: const Color.fromRGBO(238, 247, 254, 1.0),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(238, 247, 254, 1.0),
                image: DecorationImage(
                  image: AssetImage("assets/images/Add_Friend.png"),
                ),
              ),
              // foregroundDecoration: const BoxDecoration(
              //   color: Color.fromRGBO(238, 247, 254, 1.0),
              //   image: DecorationImage(
              //     image: AssetImage('assets/images/Add_Friend.png'),
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
