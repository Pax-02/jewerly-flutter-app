import 'package:flutter/material.dart';
import 'package:jewerlyapp/home_components/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,),
      drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  new UserAccountsDrawerHeader(
                    accountName: Text("Peter John"),
                    accountEmail: Text("Peter.johnn@work.com"),
                    currentAccountPicture:
                        CircleAvatar(backgroundImage: new NetworkImage("")),
                  )
                ],
              ),
            ),
      body: Body(),
      
    );
  }
}