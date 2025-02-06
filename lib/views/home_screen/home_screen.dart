import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roast_coffee/controllers/product_provider.dart';
import 'package:roast_coffee/core/utils/media_query_util.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_image_container.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_location_text.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_main_text.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_search_field.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_trending_text.dart';
import 'package:roast_coffee/views/home_screen/widgets/card_widget.dart';
import 'package:roast_coffee/views/home_screen/widgets/carousal_slider.dart';
import 'package:roast_coffee/views/home_screen/widgets/screen_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sh = MediaQueryUtil.screenHeight(context);
    final sw = MediaQueryUtil.screenWidth(context);

    // Fetch products when the screen is first loaded
    final productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (productProvider.products.isEmpty) {
        productProvider.fetchProducts();
      }
    });

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ScreenBackground(),
            Positioned(
              top: -10, // Half height of carousel items
              left: 0,
              right: 0,
              child: Consumer<ProductProvider>(
                builder: (context, productProvider, child) {
                  if (productProvider.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (productProvider.products.isEmpty) {
                    return Center(
                      child: Text('No products available'),
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildMainText(sw),
                        buildLocation(sw),
                        buildSearchField(sw),
                        carousalSlider(productProvider, sw),
                        SizedBox(height: sh * .01),
                        buildTrendingText(sw),
                        cardWidget(sw, sh, productProvider),
                        ImageGrid()
                      ],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
