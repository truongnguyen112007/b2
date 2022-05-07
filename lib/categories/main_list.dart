import 'package:b2/categories/item_list2.dart';
import 'package:flutter/material.dart';
import 'item_list.dart';

class MainList extends StatefulWidget {
  const MainList({Key? key}) : super(key: key);

  @override
  State<MainList> createState() => _MainListState();
}

class _MainListState extends State<MainList> {
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
      AssetImage('assets/images/1.png'),
      AssetImage('assets/images/2.png'),

    ];
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: item.length,
            itemBuilder: (context, index) {
              return ItemList(
                title: item[index],
                image: images[index],
              );
            },
          ),
        ),
        Expanded(
          flex: 3,
          child: ListView.builder(
            itemCount: item.length,
            itemBuilder: (context, index) {
              return IteamList2(
              );
            },
          ),
        ),
      ],
    );
  }
}
