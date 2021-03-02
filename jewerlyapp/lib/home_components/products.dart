import 'package:flutter/material.dart';
import 'package:jewerlyapp/DetailPage.dart';
import 'package:jewerlyapp/constants.dart';

class JewerlyProduct extends StatelessWidget {
  const JewerlyProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Product(image: "assets/jewerly1.jpeg",
          name: "Gold ring",
          price: 500000, 
          press: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>DetailPage())
            );
          },),
          Product(image: "assets/jewerly2.jpeg",
          name: "Diamond Earings",
          price: 80000, 
          press: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>DetailPage())
            );
          },),
          Product(image: "assets/jewerly3.jpeg",
          name: "Silver Diamond ring",
          price: 300000, 
          press: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>DetailPage())
            );
          },),
        ],
      ),
    );
  }
}



class Product extends StatelessWidget {
  const Product({
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
