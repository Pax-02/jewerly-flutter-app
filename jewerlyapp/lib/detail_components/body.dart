import 'package:flutter/material.dart';
import 'package:jewerlyapp/constants.dart';

import 'package:jewerlyapp/detail_components/DetailedProduct.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DetailedProduct(
          image: "assets/jewerly1.jpeg",
          name: "Gold Necklace",
          details:
              "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
          price: 80000,
        ),
        Positioned(
          bottom: 0,
          left: MediaQuery.of(context).size.width/4,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))),
                  color: kprimaryColor,
                  onPressed: () {},
                  child: Text("Cart",
                      style: TextStyle(
                          color: kbackgroundColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              
            ],
          ),
        )
      ],
    );
  }
}
