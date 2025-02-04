import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roast_coffee/controllers/product_provider.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/core/utils/media_query_util.dart';
import 'package:roast_coffee/views/home_screen/widgets/bottom_nav_bar.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_card.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_image_container.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_location_text.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_main_text.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_search_field.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_trending_text.dart';
import 'package:roast_coffee/views/home_screen/widgets/screen_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final productProvider = Provider.of<ProductProvider>(context);

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   //productProvider.fetchProducts();
    // });
    final sh = MediaQueryUtil.screenHeight(context);
    final sw = MediaQueryUtil.screenWidth(context);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ScreenBackground(),
            Positioned(
              top: -10, // Half height of carousel items
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildMainText(sw),
                  buildLocation(sw),
                  buildSearchField(sw),
                  CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(sw * .02),
                            boxShadow: [
                              BoxShadow(
                                  color: Appcolors.shadow,
                                  spreadRadius: 0,
                                  blurRadius: 2)
                            ]),
                        width: sw * .6,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(sw * .02),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1578775887804-699de7086ff9",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      height: 120, // Fixed height for carousel items

                      viewportFraction: 0.65,
                      enableInfiniteScroll: true,
                    ),
                  ),
                  SizedBox(height: sh * .01),
                  buildTrendingText(sw),
                  Row(
                    children: [
                      Expanded(
                        child: buildCards(sw, sh, "Dalgano Coffee",
                            "https://images.unsplash.com/photo-1578775887804-699de7086ff9"),
                      ),
                      Expanded(
                        child: buildCards(sw, sh, "Cappucino",
                            "https://images.unsplash.com/photo-1578775887804-699de7086ff9"),
                      )
                    ],
                  ),
                  ImageGrid()
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
