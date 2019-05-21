import 'package:flutter_web/material.dart';

class Item extends StatelessWidget {
  Item({this.img, this.title, this.subTitle, this.item, this.body});

  final String img;
  final String title;
  final String subTitle;
  final String item;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Image.asset(
            img,
          ),
        ),
        const SizedBox(width: 60.0),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
              ),
              Text(
                subTitle,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
              const SizedBox(height: 20.0),
              Text(
                item,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 50.0,
                ),
              ),
              const SizedBox(height: 14.0),
              Text(
                body,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        const SizedBox(width: 100.0),
      ],
    );
  }
}

class ReverseItem extends StatelessWidget {
  ReverseItem({this.img, this.title, this.subTitle, this.item, this.body});

  final String img;
  final String title;
  final String subTitle;
  final String item;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
              ),
              Text(
                subTitle,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
              const SizedBox(height: 20.0),
              Text(
                item,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 50.0,
                ),
              ),
              const SizedBox(height: 14.0),
              Text(
                body,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
        const SizedBox(width: 60.0),
        Expanded(
          flex: 1,
          child: Image.asset(
            img,
          ),
        ),
        const SizedBox(width: 100.0),
      ],
    );
  }
}
