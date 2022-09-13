import 'dart:js';

import 'package:flutter/material.dart';
import 'package:portfolio/screens/homeScreen.dart';
import 'package:portfolio/screens/programmingScreen.dart';
import 'package:portfolio/utilities/hoverButton.dart';

AppBar navigationBar(BuildContext context) {
  return AppBar(
      elevation: 0,
      centerTitle: true,
      bottomOpacity: 0,
      backgroundColor: Colors.transparent,
      bottom: TabBar(
        tabs: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HoverButton(
              buttonText: 'Home',
              onPressedState: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: HoverButton(
                buttonText: 'Neuroscience',
                pageUrl: 'https://github.com/prejwal-p',
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HoverButton(
              buttonText: 'Programming',
              onPressedState: () {
                Navigator.pushNamed(context, '/programming');
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: HoverButton(
                  buttonText: 'Contact Me',
                  pageUrl: 'https://github.com/prejwal-p'))
        ],
      ));
}
