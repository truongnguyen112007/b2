import 'package:flutter/material.dart';

class ProductItem2 extends StatelessWidget {
  const ProductItem2({Key? key, required this.title,required this.image}) : super(key: key);
  final String title;
  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          ],
        ));
  }
}
