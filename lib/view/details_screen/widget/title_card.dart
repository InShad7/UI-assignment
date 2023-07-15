
import 'package:flutter/material.dart';
import 'package:sunruleui/view/home_screen/widget/place_tile.dart';
import 'package:sunruleui/view/utils/utils.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      height: mHeight! / 3.6,
      width: mWidth,
      // color: blue,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 23,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        182, 243, 205, 155),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Center(
                    child: Text(
                      'Up to 20% off',
                      style: TextStyle(
                          fontSize: 15, color: orange),
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: orange,
                )
              ],
            ),
            kHeight,
            const Text(
              'Burj Khalifa top observatory desk',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight,
            const Text(
              '⭐ 4.3  (338K+ reviews)   1M + booked',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            kHeight,
            PlaceTiles(length: 6, details: true),
            kHeight5,
            PlaceTiles(length: 4, details: true),
          ]),
    );
  }
}
