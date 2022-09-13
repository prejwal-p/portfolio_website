import 'package:flutter/material.dart';

class NeuroScreen extends StatelessWidget {
  const NeuroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
            child: Text(
              'Neuroscience Projects',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(100),
            child: Text(
              'Coming Soon',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
            ),
          ),
        ],
      ),
    ));
  }
}
