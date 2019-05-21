import 'package:flutter_web/material.dart';
import 'package:portfolio/Components/item.dart';

class Mobile extends StatelessWidget {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _ergTrack(),
        _comfortApp(),
        _counterProDUCK(),
        _waterTrack()
      ],
    );
  }
}

class _ergTrack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Item(
        img: 'img/mobile/mb-erg.png',
        title: 'Android App',
        subTitle: 'Java, SQL',
        item: 'ErgTrack',
        body:
            'A simple mobile application for tracking erg workouts. Stores data in local SQL database.');
  }
}

class _comfortApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReverseItem(
        img: 'img/mobile/mb-comf.png',
        title: 'iOS App',
        subTitle: 'Swift, Firebase',
        item: 'Comfort App',
        body:
            'An application built for graduate student project at the Energy Sciennce and Research Lab. It takes subjective data from the user and stores it in firebase. ');
  }
}

class _counterProDUCK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Item(
        img: 'img/mobile/mb-chat.png',
        title: 'Flutter App',
        subTitle: 'Dart',
        item: 'Matrix.org Chat App',
        body:
            'A chat app built at the QuackIT Hackaton. Unfinished. While texts can be sent and recieved, there is a state bug that prevents new texts being added to the screen.');
  }
}

class _waterTrack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReverseItem(
        img: '',
        title: 'Flutter App',
        subTitle: 'Dart',
        item: 'WaterTrack',
        body: 'WIP');
  }
}
