import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeScreen extends StatelessWidget {
  const ContactMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 100, 100, 50),
            child: Text(
              'Get In Touch With Me!',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  alignment: Alignment.center,
                  iconSize: 40,
                  color: Colors.black87,
                  onPressed: () {
                    _launchURL('https://www.linkedin.com/in/prejwal-p/');
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  alignment: Alignment.center,
                  iconSize: 40,
                  color: Colors.black87,
                  onPressed: () {
                    _launchURL('https://github.com/prejwal-p');
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  alignment: Alignment.center,
                  iconSize: 30,
                  color: Colors.black87,
                  onPressed: () {
                    _launchURL('https://www.kaggle.com/prejwal');
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.kaggle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  alignment: Alignment.center,
                  iconSize: 40,
                  color: Colors.black87,
                  onPressed: () {
                    _launchURL('prejwal.p06@gmail.com');
                  },
                  icon: FaIcon(
                    Icons.email,
                  ),
                ),
              ),
            ],
          )
        ],
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
