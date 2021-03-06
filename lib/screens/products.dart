import 'package:flutter/material.dart';
import '../widgets/product/product_card.dart';
import '../widgets/common/appbar.dart';

class Products extends StatelessWidget {
  final productList;
  const Products({Key? key, required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const BasicAppbar(),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
          return ProductCard(productList[index]['Brand Name'],
              productList[index]['Price'], productList[index]['Source Image']);
        }, itemCount: productList.length,)
        );
  }
}
