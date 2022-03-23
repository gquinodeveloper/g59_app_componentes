import 'package:flutter/material.dart';
import 'package:g59_flutter_componentes/screens/widgets/item_card.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> getUsers = ["Gustavo", "Hide", "Beth", "Martin"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: 450.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getUsers.length,
          itemBuilder: (context, index) {
            //return Text("INDEX: ${getUsers[index]}");
            return const ItemCard();
            /*  return Column(
              children: [
                SizedBox(
                  width: 120.0,
                  height: 120.0,
                  child: Card(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(getUsers[index]),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(getUsers[index])
              ],
            ); */
          },
        ),
      ),
    );
  }
}
