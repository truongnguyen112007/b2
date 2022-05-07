import 'package:b2/categories/product_item2.dart';
import 'package:flutter/material.dart';

import 'item_list.dart';

class IteamList2 extends StatelessWidget {
  const IteamList2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = [
      "Thịt trứng",
      "Trái cây",
      "Rau củ quả",
      "Đồ đông lạnh",
      "Dầu ăn gia vị",
      "Gạo mì nông sản",
      "Bánh kẹo",
      "Cá,hải sản"
    ];
    final images = [
      AssetImage('assets/images/1.png'),
      AssetImage('assets/images/2.png'),
      AssetImage('assets/images/1.png'),
      AssetImage('assets/images/1.png'),
      AssetImage('assets/images/1.png'),
      AssetImage('assets/images/1.png'),
      AssetImage('assets/images/1.png'),
      AssetImage('assets/images/1.png'),
    ];
    return Column(
      children: [
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: item.length,
          itemBuilder: (context, index) {
            return ProductItem2(
              title: item[index],
              image: images[index],
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.6,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
        ),
        Container(color: Color.fromARGB(255, 238, 233, 233),height: 10,)
      ],
    );
  }
}
