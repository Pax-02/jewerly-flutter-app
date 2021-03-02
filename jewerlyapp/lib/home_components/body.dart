import 'package:flutter/material.dart';
import 'package:jewerlyapp/home_components/HeaderAndSearchbar.dart';
import 'package:jewerlyapp/home_components/SectionTitle.dart';
import 'package:jewerlyapp/home_components/homedecor.dart';
import 'package:jewerlyapp/home_components/products.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderAndSearchBar(size: size),
          SectionTitle(
            title: "Jewelry",
          ),
          JewerlyProduct(),

          SectionTitle(title: "Home decoration",),

          HomeDecoration()

        ],
      ),
    );
  }
}

