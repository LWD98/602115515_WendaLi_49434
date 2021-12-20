import 'dart:convert';
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
        child: FutureBuilder(
          builder: (context, snapshot) {
            var data = json.decode(snapshot.data.toString());
            return ListView.builder(itemBuilder: (BuildContext context, int index){
              return MyBox(data[index]["title"],data[index]["subtitle"],data[index]["img"]);
            },
            itemCount: data.length,
            );
          },
          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
        ),
      ),
    );
  }
}


Widget MyBox(
  String title,
  String subtitle,
  String img,
) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.all(19),
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
