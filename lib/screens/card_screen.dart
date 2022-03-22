import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.network(
                    "https://cdn.dribbble.com/users/5722038/screenshots/17668380/media/a4f9bdaf59a23353cf406ca89662068b.png?compress=1&resize=1200x900&vertical=top"),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                      "The Flutter Charts package is a data visualization library written natively in Dart for creating beautiful, animated and high-performance charts, which are used to craft high-quality mobile app user interfaces using Flutter."),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
