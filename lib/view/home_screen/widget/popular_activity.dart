import 'package:flutter/material.dart';
import 'package:sunruleui/view/home_screen/widget/east_asia_card.dart';
import 'package:sunruleui/view/home_screen/widget/place_tile.dart';
import 'package:sunruleui/view/home_screen/widget/see_more_btn.dart';
import 'package:sunruleui/view/utils/utils.dart';

class PopularActivity extends StatelessWidget {
  PopularActivity({
    super.key,
    this.eastAsia = false,
    this.title,
    this.taiwan = false,
  });
  final eastAsia;
  final title;
  final taiwan;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: eastAsia
          ? mHeight! / 4
          : taiwan
              ? mHeight! / 2.8
              : mHeight! / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Visibility(
                  visible: (eastAsia || taiwan),
                  child: const Text(
                    'Explore',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
          kHeight,
          EastAsiaCard(eastAsia: eastAsia, taiwan: taiwan),
          Visibility(
            visible: taiwan,
            child: Column(
              children: const[
                PlaceTiles(length: 6),
                PlaceTiles(length: 4),
              ],
            ),
          ),
          Visibility(
            visible: (!eastAsia && !taiwan),
            child: const SeeMoreBtn()
          )
        ],
      ),
    );
  }
}
