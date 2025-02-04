 import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/app_icons.dart';
import 'package:roast_coffee/core/utils/colors.dart';

Padding buildTrendingText(double sw) {
    return Padding(
                  padding: EdgeInsets.symmetric(horizontal: sw * .03),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Trending ",
                                style: TextStyle(
                                    fontSize: 20, color: Appcolors.primary2),
                              ),
                              Container(
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Appcolors.yellow,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    "16",
                                    style: TextStyle(
                                        fontSize: 11, color: Appcolors.white),
                                  ),
                                ),
                              ),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "View all ",
                              style: TextStyle(
                                  fontSize: 14, color: Appcolors.primary2),
                            ),
                            Icon(
                              AppIcons.viewAllIcon,
                              color: Appcolors.primary2,
                              size: 14,
                            )
                          ],
                        )
                      ]),
                );
  }
