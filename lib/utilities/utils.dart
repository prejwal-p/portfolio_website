import 'package:portfolio/models/category.dart';

class Utils {
  static List<Projects> getProjects() {
    return [
      Projects(
          name: 'FlashChat',
          description: 'A Minimal Messaging App',
          url: 'https://github.com/prejwal-p/flashchat',
          imageLoc: 'projectImages/fc.png'),
      Projects(
          name: 'BMI',
          description: 'Find Your BMI',
          url: 'https://github.com/prejwal-p/bmi',
          imageLoc: 'projectImages/bmi.png'),
      Projects(
          name: 'Clima',
          description: 'Weather App',
          url: 'https://github.com/prejwal-p/clima',
          imageLoc: 'projectImages/clima.png'),
      Projects(
          name: 'Crypto Tracker',
          description: 'Track BTC and ETH Prices',
          url: 'https://github.com/prejwal-p/bitcoin_ticker',
          imageLoc: 'projectImages/btc.png'),
      Projects(
          name: 'xylo',
          description: 'A xylophone app',
          url: 'https://github.com/prejwal-p/xylo',
          imageLoc: 'projectImages/xylo.png'),
    ];
  }
}
