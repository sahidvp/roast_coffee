import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/core/utils/image_path.dart';
import 'package:roast_coffee/core/utils/media_query_util.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          ),
        ),
      ],
    );
  }
}
