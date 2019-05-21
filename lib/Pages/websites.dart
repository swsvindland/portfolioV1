import 'package:flutter_web/material.dart';
import 'package:portfolio/Components/item.dart';

class Websites extends StatelessWidget {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[_MaggieTube()],
    );
  }
}

class _MaggieTube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Item(
        img: 'img/websites/web-mt.png',
        title: 'Django WebApp',
        subTitle: 'Python, HTML, CSS, JavaScript',
        item: 'MaggieTube',
        body:
            'This was a fun 48 hour project built with 3 people. We where given the task at Techstars Startup weekend to build a better YouTube. But also for a startup so just get an MVP up and running. We settled on building a Django based backend to store the video and thumbnail files, and then built out a few simple html pages. Then we deployed the web app on Digital Ocean.');
  }
}
