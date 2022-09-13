import 'package:flutter/material.dart';
import 'package:portfolio/screens/contactScreen.dart';
import 'package:portfolio/screens/homeScreen.dart';
import 'package:portfolio/screens/neuroScreen.dart';
import 'package:portfolio/screens/programmingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Prejwal Prabhakaran',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Poppins",
          textTheme: TextTheme(bodyText1: TextStyle(), bodyText2: TextStyle())
              .apply(bodyColor: Colors.black87, displayColor: Colors.black87),
        ),
        routes: {
          '/home': (_) => HomeScreen(),
          '/programming': (_) => ProgrammingScreen(),
        },
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: AppBar(
                elevation: 0,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                bottom: TabBar(
                  overlayColor: MaterialStateProperty.all(Colors.white),
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Home',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Neuroscience',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Flutter',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Connect With Me',
                        style: TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black87,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black87),
                ),
              ),
            ),
            body: TabBarView(children: [
              HomeScreen(),
              NeuroScreen(),
              ProgrammingScreen(),
              ContactMeScreen()
            ]),
          ),
        ));
  }
}
