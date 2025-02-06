import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:roast_coffee/controllers/product_provider.dart';
import 'package:roast_coffee/core/utils/colors.dart';

CarouselSlider carousalSlider(ProductProvider productProvider, double sw) {
    return CarouselSlider(
                        items: productProvider.products.map((product) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(sw * .02),
                              boxShadow: [
                                BoxShadow(
                                  color: Appcolors.shadow,
                                  spreadRadius: 0,
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            width: sw * .6,
                            height: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(sw * .02),
                              child: CachedNetworkImage(
                                imageUrl: product.imageUrl ??
                                    "https://images.unsplash.com/photo-1578775887804-699de7086ff9",
                                fit: BoxFit.cover,
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
                          );
                        }).toList(),
                        options: CarouselOptions(
                          height: 120, // Fixed height for carousel items
                          viewportFraction: 0.65,
                          enableInfiniteScroll: true,
                        ),
                      );
  }