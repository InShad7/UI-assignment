import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key});

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
                SizedBox(
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
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
                              fontWeight: FontWeight.w500),
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
