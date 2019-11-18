import 'package:flutter/material.dart';

import '../../models/Product.dart';
import 'product_content_widget.dart';
import 'product_detail_background.dart';
import 'product_detail_topbar.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ProductDetailBackground(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProductDetailTopBar(),
                ProductContentWidget(
                  screenHeight: screenHeight,
                  product: stadia,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
