import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/widgets/image_and_text/vertical_image_text.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 6,
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageWithText(
            image: TImages.clothIcon,
            imageText: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
