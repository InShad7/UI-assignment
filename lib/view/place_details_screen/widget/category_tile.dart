
import 'package:flutter/material.dart';
import 'package:sunruleui/view/home_screen/widget/category_card.dart';
import 'package:sunruleui/view/utils/utils.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mHeight! / 7.7,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: img.length,
        itemBuilder: (BuildContext context, int index) {
          final image = img[index];
          final name = title[index];

          return Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                Image.asset(image, scale: 12),
                kHeight,
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
