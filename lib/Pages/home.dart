import 'package:flutter_web/material.dart';

import '../Components/item.dart';

class Home extends StatelessWidget {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _About(),
        _Portfolio(),
      ],
    );
  }
}

class _About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Item(
        img: 'img/home/headshot.png',
        title: 'Sam Svindland',
        subTitle: 'Bachelor of Science in Mathematics and Computer Science',
        item: 'Portfolio',
        body:
            'A graduating Senior looking to start a career in software development.');
  }
}

class _Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReverseItem(
        img: 'img/home/flutter-logo.jpeg',
        title: 'Flutter WebApp',
        subTitle: 'Dartlang',
        item: 'Portfolio',
        body:
            'This websites was built as a test of the new flutter web and should be updated to a full version once flutter web 1.0.0 is released.\nNote: Github linkes will be added when redirect is supported in flutter_web\nfor now go to:\nhttps://github.com/swsvindland');
  }
}
