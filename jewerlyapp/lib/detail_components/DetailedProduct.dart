import 'package:flutter/material.dart';
import 'package:jewerlyapp/constants.dart';
import 'package:jewerlyapp/homepage.dart';

class DetailedProduct extends StatelessWidget {
  const DetailedProduct({
    Key key,
    this.image,
    this.name,
    this.details,
    this.price,
    
  }) : super(key: key);
  final String image,name,details;
  final int price;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
        ),
        Positioned(
          left: 10,
          top: 10 + MediaQuery.of(context).padding.top,
          child: ClipOval(
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(color: kbackgroundColor),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>HomePage())
            );
                },
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: kbackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                    offset: Offset(0, -6),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(name.toUpperCase(),
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Description",
                              style: TextStyle(
                                  fontSize: 20, color: kprimaryColor)),
                          Spacer(),
                          Text("$price RWF",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kprimaryColor)),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        padding: EdgeInsets.all(10),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            border: Border.all(color: ktextColor),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(details),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
