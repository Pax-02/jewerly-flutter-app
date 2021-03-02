import 'package:flutter/material.dart';
import 'package:jewerlyapp/home_components/products.dart';


class HomeDecoration extends StatelessWidget {
  const HomeDecoration({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Product(image: "assets/painting1.jpeg",
          name: "Tableau Franco",
          price: 70000, 
          press: (){},),
          Product(image: "assets/vase2.jpeg",
          name: "Sophisticate Vase",
          price: 90000, 
          press: (){},),
          Product(image: "assets/painting2.jpeg",
          name: "George Painting ",
          price: 150000, 
          press: (){},),
        ],
      ),
    );
  }
}
