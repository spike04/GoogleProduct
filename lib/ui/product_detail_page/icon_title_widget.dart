import 'package:flutter/material.dart';

class IconTitleWidget extends StatelessWidget {
  final String title, imagePath;

  const IconTitleWidget({
    Key key,
    this.title,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            color: Color(0xFFDA1D21),
            height: 36,
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFFDA1D21),
              fontSize: 12,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
