import 'package:flutter/material.dart';
import 'package:jewerlyapp/constants.dart';
import 'package:jewerlyapp/home_components/HeaderAndSearchbar.dart';
import 'package:jewerlyapp/home_components/SectionTitle.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderAndSearchBar(size: size),
          SectionTitle(
            title: "Jewerlies",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                JewerlyProduct(image: "assets/Gold_ring.png",
                name: "Gold ring",
                price: 500000, 
                press: (){},),
                JewerlyProduct(image: "assets/diamond_earings.png",
                name: "Diamond Earings",
                price: 80000, 
                press: (){},),
                JewerlyProduct(image: "assets/silver_ring.png",
                name: "Silver Diamond ring",
                price: 300000, 
                press: (){},),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class JewerlyProduct extends StatelessWidget {
  const JewerlyProduct({
    Key key,
    this.image,
    this.name,
    this.price,
    this.press,
    
    
  }) : super(key: key);

  final String image;
  final String name;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(boxShadow: [BoxShadow(
          color: kprimaryColor.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 0.3,
          offset: Offset(1, 0), // changes position of shadow
        )]),
        width: size.width * 0.4,
        child: Card(
          child: Column(
            children: [
              SizedBox(
                width: size.width * 0.4 - 30,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
                height: size.width * 0.4 - 24,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(text:'$name\n'.toUpperCase(),style:Theme.of(context).textTheme.button),
                  TextSpan(text: "Price: $price Rwf", style: TextStyle(color: kprimaryColor))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
