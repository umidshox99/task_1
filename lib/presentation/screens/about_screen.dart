import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:task_1/utils/utils.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: primaryColor),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 30),
            child: Center(
              child: Text(
                "ShoppApp",
                style: TextStyle(
                    color: Colors.amberAccent,
                    decoration: TextDecoration.none,
                    fontSize: 24),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: FlareActor("assets/flare.flr",
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  animation: "idle"),
            )),
        Expanded(
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Welcome to Shopping app",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300,
                    height: 45,
                    child: RaisedButton(
                      color: primaryColor,
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/sign_up");
                      },
                    ),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[800],
                        decoration: TextDecoration.none),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/sign_in");
                  },
                )
              ],
            ),
          ),
          flex: 1,
        )
      ],
    ));
  }
}
