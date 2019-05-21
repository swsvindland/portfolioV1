import 'package:flutter_web/material.dart';

import 'Pages/home.dart';
import 'Components/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}

_PageState pageState;

class Page extends StatefulWidget {
  @override
  _PageState createState() {
    pageState = _PageState();
    return pageState;
  }
}

class _PageState extends State<Page> {
  Widget body = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      body: this.body,
    );
  }
}
