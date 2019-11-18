import 'package:flutter/material.dart';

import '../../models/Product.dart';

class BlueButton extends StatelessWidget {
  final Product product;

  const BlueButton({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
        horizontal: 28,
        vertical: 5,
      ),
      child: Text(
        product.buttonText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 10,
        ),
      ),
      onPressed: () {},
      color: Color(0xFF0000FF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
