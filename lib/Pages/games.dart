import 'package:flutter_web/material.dart';

import 'package:portfolio/Components/item.dart';

class Games extends StatelessWidget {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[_FluffySheep(), _Pong(), _UnityZelda()],
    );
  }
}

class _FluffySheep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Item(
        img: 'img/games/game-sheep.png',
        title: '2d Unity Game',
        subTitle: 'C#',
        item: 'FluffySheep',
        body:
            'This is a game that I started building back junior year of high school but took until senior year of college to get decent graphics for it. Originally it was built using my own hand drawn art in photoshop but eventually I found assets online that matched what I wanted the game to look and feel like. ');
  }
}

class _Pong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReverseItem(
        img: 'img/games/game-pong.png',
        title: 'Android Canvas Game',
        subTitle: 'Kotlin',
        item: 'Pong with Friends',
        body:
            'I built this game as a one day project. I began by finding a game loop online in java, rewrote it in kotlin, and then expanded it to support pong and not just a ball flying around the screen. I then added multitouch support so 2 people could play locally and added RNG AI so one could play solo. Then I worked with adding state for setting but that seems to be somewhat buggy right now. ');
  }
}

class _UnityZelda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Item(
        img: '',
        title: '2d Unity Game',
        subTitle: 'C#',
        item: 'Diablo Like Game',
        body: 'WIP');
  }
}
