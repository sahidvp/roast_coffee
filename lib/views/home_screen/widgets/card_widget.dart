import 'package:flutter/material.dart';
import 'package:roast_coffee/controllers/product_provider.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_card.dart';

Row cardWidget(double sw, double sh, ProductProvider productProvider) {
    return Row(
                        children: [
                          Expanded(
                            child: buildCards(
                                sw, sh, productProvider.products[0]),
                          ),
                          Expanded(
                            child: buildCards(
                                sw, sh, productProvider.products[1]),
                          )
                        ],
                      );
  }