import 'dart:ui';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About computer',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: ListView(
          children: [
            MyBox(
              "What is computer?",
              "A computer is a machine that can be programmed to carry out sequences of arithmetic or logical operations automatically. Modern computers can perform generic sets of operations known as programs.",
              "https://cdn.pixabay.com/photo/2017/04/25/22/28/despaired-2261021_960_720.jpg"
            ),
            SizedBox(height: 20),
            MyBox(
              "what is software",
              "Software is a collection of instructions that tell a computer how to work.",
              "https://cdn.pixabay.com/photo/2016/11/21/17/59/blackboard-1846865_960_720.jpg"
            ),
            SizedBox(height: 20),
            MyBox(
              "what is hardware",
              "Computer hardware includes the physical parts of a computer, such as the case, central processing unit (CPU), monitor, mouse, keyboard, computer data storage, graphics card, sound card, speakers and motherboard.",
              "https://cdn.pixabay.com/photo/2011/12/14/12/17/galaxy-11098_960_720.jpg"
            ),
          ],
        ),
      ),
    );
  }
}

Widget MyBox(String title, String subtitle, String img,) {
  return Container(
    padding: EdgeInsets.all(17),
    height: 150,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueAccent,
        image: DecorationImage(
            image: NetworkImage(img),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1), BlendMode.darken))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 25,
              color: Colors.grey[50],
              fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(
              fontSize: 15,
              color: Colors.grey[50],
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
