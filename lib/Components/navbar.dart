import 'package:flutter_web/material.dart';

import '../Pages/home.dart';
import '../Pages/algorithms.dart';
import '../Pages/games.dart';
import '../Pages/mobile.dart';
import '../Pages/websites.dart';
import '../main.dart';

class NavBar extends StatelessWidget implements PreferredSize {
  @override
  Widget get child => null;

  @override
  final Size preferredSize = Size(56.0, 56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      elevation: 0.0,
      title: MaterialButton(
        child: Text(
          'Portfolio',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: () {
          pageState.setState(() {
            pageState.body = Home();
          });
        },
      ),
      actions: <Widget>[
        MaterialButton(
          child: Text(
            'Games',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            pageState.setState(() {
              pageState.body = Games();
            });
          },
        ),
        MaterialButton(
          child: Text(
            'Websites',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            pageState.setState(() {
              pageState.body = Websites();
            });
          },
        ),
        MaterialButton(
          child: Text(
            'Mobile Apps',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            pageState.setState(() {
              pageState.body = Mobile();
            });
          },
        ),
        MaterialButton(
          child: Text(
            'Algorithms',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            pageState.setState(() {
              pageState.body = Algorithms();
            });
          },
        ),
      ],
    );
  }
}
