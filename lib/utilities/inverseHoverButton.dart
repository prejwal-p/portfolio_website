import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InverseHoverButton extends StatefulWidget {
  const InverseHoverButton(
      {Key? key, @required this.buttonText, @required this.pageUrl})
      : super(key: key);
  final String? buttonText;
  final String? pageUrl;

  @override
  State<InverseHoverButton> createState() => _InverseHoverButtonState();
}

class _InverseHoverButtonState extends State<InverseHoverButton> {
  Color textColor = Colors.black;
  Color backgroundColor = Colors.white;
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      textColor = Colors.black;
      backgroundColor = Colors.white;
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      textColor = Colors.white;
      backgroundColor = Colors.black;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: TextButton(
        style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(color: textColor, width: 2)),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            textStyle:
                MaterialStateProperty.all(TextStyle(color: Colors.black)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))))),
        onPressed: () {
          _launchURL(widget.pageUrl!);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.buttonText!,
            style: TextStyle(color: textColor, fontSize: 20),
          ),
        ),
      ),
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
