import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: ListView(
        children: [
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
          _contact(),
        ],
      ),
    );
  }

  Widget _contact() {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://i.pinimg.com/474x/bc/3d/f4/bc3df43ae92fa10a33be3eeff0e8ee0b.jpg"),
      ),
      trailing: SizedBox(
        width: 180.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(Icons.sms),
            SizedBox(width: 10.0),
            Icon(Icons.phone_enabled_rounded),
          ],
        ),
      ),
      title: const Text("Gustavo"),
      subtitle: const Text("+51 958346677"),
    );
  }
}
