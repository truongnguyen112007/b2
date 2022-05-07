import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key, required this.title,required this.image}) : super(key: key);
  final String title;
  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 124, 202, 238),
        child: Column(
          children: [
            SizedBox(height: 10),
            Image(
              image: image,
              width: 50,
              height: 50,
            ),
            SizedBox(height: 5),
            Text(title),
            SizedBox(height: 20),
            Divider(
              color: Colors.grey,
            ),
          ],
        ));
  }
}
