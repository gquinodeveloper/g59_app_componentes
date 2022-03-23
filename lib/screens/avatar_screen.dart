import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: Colors.white,
        //elevation: 0.0,
        leading: const Icon(Icons.home_max_outlined),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(width: 15.0),
          CircleAvatar(
            radius: 15.0,
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/bc/3d/f4/bc3df43ae92fa10a33be3eeff0e8ee0b.jpg"),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 50.0,
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/474x/bc/3d/f4/bc3df43ae92fa10a33be3eeff0e8ee0b.jpg"),
        ),
      ),
    );
  }
}
