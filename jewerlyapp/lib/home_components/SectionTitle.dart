import 'package:flutter/material.dart';


class SectionTitle extends StatelessWidget {
  const SectionTitle({
    this.title,
    Key key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(12),
          height: 30,
          child: Stack(
            children: [
              Text(title,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23,)),
            ],
          ),
          ),
          
      ],
    );
  }
}
