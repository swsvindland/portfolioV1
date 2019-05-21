import 'package:flutter_web/material.dart';
import 'package:portfolio/Components/item.dart';

class Algorithms extends StatelessWidget {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _imgProcessor(),
        _mullersMethod(),
        _bSplineEval(),
        _objRaserizer()
      ],
    );
  }
}

class _imgProcessor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Item(
        img: 'img/algorithms/alg-proc.png',
        title: '',
        subTitle: 'C++',
        item: 'PNM Image Processor',
        body:
            'A collection of filters to apply to an input pnm image and output a new image');
  }
}

class _mullersMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReverseItem(
        img: 'img/algorithms/alg-mull.png',
        title: '',
        subTitle: 'C++',
        item: 'Mullers Method',
        body: 'An implementation of Mullers Method');
  }
}

class _bSplineEval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Item(
        img: 'img/algorithms/alg-spline.png',
        title: '',
        subTitle: 'Python',
        item: 'B Spline Eval',
        body: 'An implementation of the B-Spline Eval algorithm.');
  }
}

class _objRaserizer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReverseItem(
        img: 'img/algorithms/alg-rast.png',
        title: '',
        subTitle: 'C++, VTK',
        item: 'Raserizer',
        body:
            'This is an implementation of the scane line algorithm that will take a dataset from vtk and turn it into a png.');
  }
}
