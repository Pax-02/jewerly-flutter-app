import 'package:flutter/material.dart';
import 'package:jewerlyapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: <Widget>[
              //container to be added to the appbar to annd form the b0ttom border radius
              Container(
                padding: EdgeInsets.only(
                  bottom: 50.0,
                  left: Kpadding,
                  
                ),
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
                child: Row(
                  children: [
                    Text(
                      "Welcome To Jewerly App!",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              //position widget that will help us tp position the container widget dat will be used as a search boc
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: Kpadding),
                  padding: EdgeInsets.symmetric(horizontal: Kpadding),
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 30.0,
                            color: kprimaryColor)
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      //text tp be seen before a user inputs a search
                      hintText: "search for an Item",
                      hintStyle: TextStyle(color: ktextColor),
                      //rempve the border of the textflied
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
