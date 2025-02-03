import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:roast_coffee/core/utils/app_icons.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/core/utils/image_path.dart';
import 'package:roast_coffee/core/utils/media_query_util.dart';
import 'package:roast_coffee/views/login_screen.dart/widgets/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sh = MediaQueryUtil.screenHeight(context);
    final sw = MediaQueryUtil.screenWidth(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Appcolors.background,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQueryUtil.getHeightPercentage(context, .3),
                  width: double.infinity,
                  color: Appcolors.primary2,
                  child: SvgPicture.asset(
                    ImagePath.backgroundImg,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Appcolors.background,
                    // Add your content here
                    child: const Center(
                      child: Text('Content goes here'),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 10, // Half height of carousel items
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sw * .05),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "What are you craving\ntoday? ",
                              style: TextStyle(
                                  fontSize: 19, color: Appcolors.white),
                            ),
                          ),
                          Icon(
                            AppIcons.settings,
                            color: Appcolors.white,
                            size: 20,
                          )
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sw * .05),
                    child: Row(
                      children: [
                        Icon(
                          IconsaxPlusLinear.gps,
                          color: Appcolors.white,
                          size: 15,
                        ),
                        Text(
                          " 1920 Al Fateh Grand Mosque Road,Bahrain ",
                          style:
                              TextStyle(color: Appcolors.white, fontSize: 12),
                        ),
                        Icon(
                          IconsaxPlusLinear.arrow_circle_down,
                          color: Appcolors.white,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        AppIcons.searchFilter,
                        color: Appcolors.primary2,
                      ),
                      hintText: "What are you looking for ?",
                      hintStyle: TextStyle(color: Appcolors.text),
                      filled: true,
                      fillColor: Appcolors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(sw * .03),
                        borderSide:
                            BorderSide(color: Appcolors.primary, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(sw * .03),
                        borderSide:
                            BorderSide(color: Appcolors.black, width: 2),
                      ),
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            color: Appcolors.black,
                            borderRadius: BorderRadius.circular(sw * .03)),
                        width: 220,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(sw * .03),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
