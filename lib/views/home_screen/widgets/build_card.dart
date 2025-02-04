import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/colors.dart';

Widget buildCards(double sw, double sh, String title, String imageUrl) {
  return Container(
    width: sw * 0.4, // Adjust the width as needed
    margin: EdgeInsets.symmetric(
      horizontal: sw * 0.02,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(sw * 0.03),
      color: Colors.white,
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
      padding: EdgeInsets.all(sw * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(sw * .015),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: sh * .1, // Adjust the height as needed
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: sw * .02),
            child: Text(
              title,
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
                    "4.8",
                    style: TextStyle(color: Appcolors.primary2),
                  ),
                  Text(
                    "(125)",
                    style: TextStyle(fontSize: 10, color: Appcolors.primary2),
                  )
                ],
              ),
              Text(
                "16 min",
                style: TextStyle(fontSize: 10, color: Appcolors.primary2),
              )
            ],
          ),
          Text(
            "BHD 18.000",
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
