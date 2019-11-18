import 'package:flutter/material.dart';
import 'package:google_product/models/Product.dart';
import 'package:google_product/widgets/red_button.dart';

import 'icon_title_widget.dart';

class ProductContentWidget extends StatelessWidget {
  final screenHeight;
  final Product product;

  const ProductContentWidget({
    Key key,
    this.screenHeight,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: screenHeight * 0.2),
          Image.asset(
            product.imagePath,
            height: screenHeight * 0.3,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Starting',
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '\$ ',
                      style: TextStyle(
                        color: Color(0xFF0000FF),
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: product.price,
                      style: TextStyle(
                        color: Color(0xFF0000FF),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Text(
                product.name.replaceAll("\n", " ") + "\t\t\t\t",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                ),
              ),
              Image.asset(
                'assets/images/stadia_logo.png',
                height: 20,
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            product.productInfo,
            style: TextStyle(
              color: Color(0xFF909090),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 40),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconTitleWidget(
                  imagePath: 'assets/icons/create.png',
                  title: 'Create',
                ),
                IconTitleWidget(
                  imagePath: 'assets/icons/connect.png',
                  title: 'Connect',
                ),
                IconTitleWidget(
                  imagePath: 'assets/icons/discover.png',
                  title: 'Discover',
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xFFECECEC),
            thickness: 1,
            height: 32,
          ),
          Row(
            children: <Widget>[
              RedButton(
                text: 'Pre-Order',
              ),
              Spacer(),
              Material(
                elevation: 4,
                color: Colors.white,
                shape: CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add,
                    size: 35,
                    color: Color(0xFF0000FF),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
