import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet/Posts.dart';

class Home extends StatelessWidget {
  final List people = [
    "Bilal",
    "Nura",
    "Nazife",
    "Burak",
    "İlkem",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pet",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                Icon(Icons.message_outlined),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.logout_outlined),
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
                                                      //Posts
          Expanded(
            child: ListView.builder(itemCount: people.length,
                itemBuilder: (context,index) {
              return Post(
                  name: people[index],
              );
            }),
          ),
        ],
      ),
    );
  }
}
