import 'package:flutter/material.dart';
import 'package:jewerlyapp/homepage.dart';
import 'package:jewerlyapp/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[50],
      body: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.topLeft,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(35.0, 80.0, 0.0, 0.0),
                    child: Text('Y',
                        style: TextStyle(
                            fontSize: 52.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.deepOrangeAccent[100])),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(65.0, 80.0, 0.0, 0.0),
                    child: Text('our',
                        style: TextStyle(
                            fontSize: 52.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.blueGrey[600])),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(40.0, 140.0, 0.0, 0.0),
                    child: Text('L',
                        style: TextStyle(
                            fontSize: 52.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.deepOrangeAccent[100])),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(70.0, 140.0, 0.0, 0.0),
                    child: Text('ocal',
                        style: TextStyle(
                            fontSize: 52.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.blueGrey[600])),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(35.0, 200.0, 0.0, 0.0),
                    child: Text('C',
                        style: TextStyle(
                            fontSize: 52.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.deepOrangeAccent[100])),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(70.0, 200.0, 0.0, 0.0),
                    child: Text('rafts',
                        style: TextStyle(
                            fontSize: 52.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.blueGrey[600])),
                  ),
                ],
              )),
          Expanded(
              child: Container(
                  padding: EdgeInsets.fromLTRB(35.0, 40.0, 35.0, 0.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Email Address',
                            //contentPadding: EdgeInsets.only(bottom: 40.0),
                            labelStyle: TextStyle(
                                color: Colors.blueGrey[800],
                                fontWeight: FontWeight.w300),
                            suffixIcon: Icon(Icons.message,
                                color: Colors.deepOrange[200]),
                            border: UnderlineInputBorder()),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 17.0),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              //contentPadding: EdgeInsets.only(top: 35.0),
                              labelStyle: TextStyle(
                                  color: Colors.blueGrey[800],
                                  fontWeight: FontWeight.w300),
                              suffixIcon: Icon(Icons.lock,
                                  color: Colors.deepOrange[200]),
                              border: UnderlineInputBorder())),
                      Container(
                          padding: EdgeInsets.only(top: 45.0),
                          width: 260.0,
                          height: 85.0,
                          child: RaisedButton(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 17.0),
                            ),
                            color: Colors.deepOrange[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomePage()));
                            },
                          )),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(" New to YL Crafts?",
                              style: TextStyle(fontWeight: FontWeight.w300)),
                          FlatButton(
                            minWidth: 0,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SignupScreen()));
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.deepOrange[200],
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
