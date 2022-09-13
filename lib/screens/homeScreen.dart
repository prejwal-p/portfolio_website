import 'package:flutter/material.dart';
import 'package:portfolio/screens/navigationBar.dart';
import 'package:portfolio/utilities/hoverButton.dart';
import 'programmingScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(100.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello! I’m ',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 40),
                          ),
                          Text('Prejwal Prabhakaran',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 70, fontWeight: FontWeight.w700)),
                          Text(
                              'Neuroscience Graduate Student, Hobby Programmer, and Guitarist',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w200)),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Image.asset(
                      'backgroundVectors/photo.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Made With '),
                    Icon(Icons.flutter_dash_sharp)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
