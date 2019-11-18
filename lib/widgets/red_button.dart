import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final String text;

  const RedButton({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(
        horizontal: 120,
        vertical: 16,
      ),
      onPressed: () {},
      textColor: Colors.white,
      child: Text(
        text.toUpperCase(),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Color(0xFFE2332F),
    );
  }
}
