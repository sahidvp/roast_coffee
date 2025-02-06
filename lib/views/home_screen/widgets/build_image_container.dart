import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:provider/provider.dart';
import 'package:roast_coffee/controllers/product_provider.dart';
import 'package:roast_coffee/core/utils/colors.dart';

class ImageGrid extends StatelessWidget {
  const ImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Appcolors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<ProductProvider>(
          builder: (context, productProvider, child) {
            // Get data from provider

            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 7,
                childAspectRatio: 1,
              ),
              itemCount: productProvider.products.isEmpty
                  ? productProvider.products.length
                  : 8,
              itemBuilder: (context, index) {
                final item = productProvider.products[index];
                return Expanded(
                  child: _buildImageWithTitle(
                    item.imageUrl!,
                    item.name!,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildImageWithTitle(String imagePath, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: CachedNetworkImage(
              imageUrl: imagePath,
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
        ),
        const SizedBox(height: 8),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 10,
              color: Appcolors.text,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class ImageData {
  final String imagePath;
  final String title;

  ImageData(this.imagePath, this.title);
}
