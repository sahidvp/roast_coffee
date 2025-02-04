import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/core/utils/image_path.dart';
import 'package:roast_coffee/core/utils/media_query_util.dart';

class ImageGrid extends StatelessWidget {
  const ImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final sh = MediaQueryUtil.screenHeight(context);
    final sw = MediaQueryUtil.screenWidth(context);
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Appcolors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // First Row of Images with Titles
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildImageWithTitle(ImagePath.splashImg, 'Title 1'),
                _buildImageWithTitle(ImagePath.splashImg, 'Title 2'),
                _buildImageWithTitle(ImagePath.splashImg, 'Title 3'),
                _buildImageWithTitle(ImagePath.splashImg, 'Title 4'),
              ],
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildImageWithTitle(ImagePath.splashImg, 'Title 5'),
                _buildImageWithTitle(ImagePath.splashImg, 'Title 6'),
                _buildImageWithTitle(ImagePath.splashImg, 'Title 7'),
                _buildImageWithTitle(ImagePath.splashImg, 'Title 8'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build an image with a title
  Widget _buildImageWithTitle(String imagePath, String title) {
    return Column(
      children: [
        Container(
          width: 50, // Adjust the size as needed
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8), // Spacing between image and title
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: Appcolors.text),
        ),
      ],
    );
  }
}
