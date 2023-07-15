import 'package:flutter/material.dart';
import 'package:sunruleui/view/place_details_screen/widget/category_tile.dart';
import 'package:sunruleui/view/utils/utils.dart';

List img = [
  'assets/hot-air-balloon.png',
  'assets/hotel.png',
  'assets/train.png',
  'assets/car.png',
];
List title = [
  'Things to do',
  'Hotels',
  'Transport',
  'Car rentals',
];

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: mHeight! / 4.7,
          decoration: const BoxDecoration(gradient: orangeGradient),
        ),
        Positioned(
          top: mHeight! / 59,
          left: mWidth! / 30,
          child: Container(
            height: mHeight! / 5.2,
            width: mWidth! / 1.07,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(3, 4),
                  ),
                ]),
            child: Column(
              children: [
                CategoryTile(),
                Container(
                  height: mHeight! / 22,
                  width: mWidth! / 1.2,
                  decoration: BoxDecoration(
                    color: cardClr2,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.widgets_rounded,
                          color: orange,
                          size: 22,
                        ),
                        kWidth,
                        Text(
                          'All categories',
                          style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
