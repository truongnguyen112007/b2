import 'package:b2/categories/main_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:60,
      color: Colors.blue,
      child: Row (children: [
        SizedBox(width: 10,),
        Icon(Icons.arrow_back_ios_new, color: Colors.white,),
        SizedBox(width:20),
        Expanded(
          child: Container(
            child: Row(children: [
              SizedBox(width:10),
                  Icon(Icons.search,color: Colors.grey,),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 280,
                    height: 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Danh mục sản phẩm"
                      ),
                    ),
                  )
            ],),
            height: 40,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(9)),
          ),
        ),
        SizedBox(width:20),
      ])
      ,);
  }
}
