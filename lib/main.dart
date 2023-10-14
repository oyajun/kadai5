import 'dart:core';
import 'package:flutter/material.dart';
import 'parameter.dart';
import 'graph.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('回路シュミレータ　　E=$EVOLTAGE'),
            ),
            body: const Padding(
              padding: EdgeInsets.all(24),
              child: Graph(),
            ),
            bottomNavigationBar: SizedBox(
              height: 170,
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      leading: const Icon(
                        Icons.circle,
                        color: Colors.red,
                      ),
                      title: Text(spots0.information),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(
                        Icons.square,
                        color: Colors.green,
                      ),
                      title: Text(spots1.information),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(
                        Icons.close,
                        color: Colors.blue,
                      ),
                      title: Text(spots2.information),
                    ),
                  ),
                ],
              ),
            )));
  }
}
