import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context)
        .size
        .width; //Should be in Widget or material app.
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Map',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(currentWidth.toString()),
              ),
            )
          ],
        ));
  }
}