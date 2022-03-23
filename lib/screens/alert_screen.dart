import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Alert"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showAlert(context);
          },
          onLongPress: () {
            print("onLongPress");
          },
          onDoubleTap: () {
            print("onDoubleTap");
          },
          child: Container(
            width: 180.0,
            height: 55.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: const LinearGradient(
                colors: [
                  Colors.red,
                  Colors.pink,
                ],
              ),
            ),
            child: const Text(
              "Show alert",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        /*  child: RaisedButton(
          child: Text("Show alert"),
          onPressed: () {
            _showAlert(context);
          },
        ), */
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.white30,
      builder: (context) {
        return AlertDialog(
          title: const Text("Message"),
          content: const Text(
            "The Flutter Charts package is a data visualization library written natively in Dart for creating beautiful, animated and high-performance charts, which are used to craft high-quality mobile app user interfaces using Flutter.",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }
}
