import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/models/product_model.dart';

Widget buildCards(double sw, double sh, ProductModel product) {
  return Container(
    width: sw * 0.4,

    // Adjust the width as needed
    margin: EdgeInsets.symmetric(
      horizontal: sw * 0.02,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(sw * 0.03),
      color: Appcolors.white,
      boxShadow: [
        BoxShadow(
          color: Appcolors.shadow,
          spreadRadius: 1,
          blurRadius: 3,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.all(
        sw * .02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(sw * .015),
              child: CachedNetworkImage(
                imageUrl: product.imageUrl ??
                    "https://images.unsplash.com/photo-1578775887804-699de7086ff9",
                fit: BoxFit.cover,

                height: sh * .1, // Adjust the height as needed
                width: double.infinity,
                errorWidget: (context, error, stackTrace) {
                  return Container(
                    color: Appcolors.text,
                    child: Center(
                      child: Icon(IconsaxPlusBold.image),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: sw * .02),
            child: Text(
              product.name!,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Appcolors.primary2),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Appcolors.yellow,
                    size: 13,
                  ),
                  Text(
                    " ${product.rating.toString()}",
                    style: TextStyle(color: Appcolors.primary2),
                  ),
                  Text(
                    " (${product.ratingCount.toString()})",
                    style: TextStyle(fontSize: 10, color: Appcolors.primary2),
                  )
                ],
              ),
              Text(
                product.makingTime.toString(),
                style: TextStyle(fontSize: 10, color: Appcolors.primary2),
              )
            ],
          ),
          Text(
            "${product.currency} ${product.price}",
            style: TextStyle(
                color: Appcolors.yellow,
                fontSize: 13,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    ),
  );
}
