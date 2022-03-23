import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.red,
              margin: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Column(
                  children: [
                    Image.network(
                        "https://cdn.dribbble.com/users/5722038/screenshots/17668380/media/a4f9bdaf59a23353cf406ca89662068b.png?compress=1&resize=1200x900&vertical=top"),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                          "The Flutter Charts package is a data visualization library written natively in Dart for creating beautiful, animated and high-performance charts, which are used to craft high-quality mobile app user interfaces using Flutter."),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Column(
                  children: [
                    Image.network(
                        "https://cdn.dribbble.com/users/5722038/screenshots/17668380/media/a4f9bdaf59a23353cf406ca89662068b.png?compress=1&resize=1200x900&vertical=top"),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                          "The Flutter Charts package is a data visualization library written natively in Dart for creating beautiful, animated and high-performance charts, which are used to craft high-quality mobile app user interfaces using Flutter."),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 300.0,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://cdn.dribbble.com/users/5722038/screenshots/17668380/media/a4f9bdaf59a23353cf406ca89662068b.png?compress=1&resize=1200x900&vertical=top")),
              ),
              child: Text(
                "The Flutter Charts package is a data visualization library written natively in Dart for creating beautiful, animated and high-performance charts, which are used to craft high-quality mobile app user interfaces using Flutter.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
