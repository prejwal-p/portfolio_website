// ignore_for_file: unnecessary_statements

import 'package:flutter/material.dart';
import 'package:portfolio/utilities/onHover.dart';
import 'package:url_launcher/url_launcher.dart';

class HoverButton extends StatelessWidget {
  const HoverButton(
      {Key? key, this.buttonText, this.pageUrl, this.onPressedState})
      : super(key: key);
  final String? buttonText;
  final String? pageUrl;
  final Function()? onPressedState;

  @override
  Widget build(BuildContext context) {
    Color textColor = Colors.black;
    Color backgroundColor = Colors.white;

    return OnHoverWidget(
      builder: ((isHovered) {
        return TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  isHovered ? Colors.black : backgroundColor),
              textStyle: MaterialStateProperty.all(
                  TextStyle(color: isHovered ? Colors.white : textColor)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))))),
          onPressed: () {
            print(onPressedState);
            pageUrl!.isEmpty ? onPressedState : _launchURL(pageUrl!);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              buttonText!,
              style: TextStyle(
                  color: isHovered ? Colors.white : textColor, fontSize: 17),
            ),
          ),
        );
      }),
    );
  }
}

_launchURL(String urlPage) async {
  final url = urlPage;
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
