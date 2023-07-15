import 'package:flutter/material.dart';
import 'package:sunruleui/view/home_screen/widget/offer_card.dart';
import 'package:sunruleui/view/home_screen/widget/offer_card_2.dart';
import 'package:sunruleui/view/utils/utils.dart';

class OfferZone extends StatelessWidget {
  OfferZone(
      {super.key,
      this.title = '',
      this.subtitle = '',
      this.isSub = false,
      this.destination = false});
  final title;
  final subtitle;
  final isSub;
  final destination;
  List img = [
    'assets/dubai.jpg',
    'assets/offer.webp',
    'assets/bali.webp',
    'assets/dubai.jpg',
    'assets/offer.webp',
  ];
  List place = [
    'Bali',
    'Dubai',
    'Bali',
    'Dubai',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mHeight! / 2.5,
      child: Padding(
        padding: const EdgeInsets.only(left: 13.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                    visible: isSub,
                    child: Container(
                      margin: const EdgeInsets.only(right: 13),
                      height: 33,
                      width: 110,
                      decoration: const BoxDecoration(
                        color: orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            subtitle,
                            style: const TextStyle(
                              color: white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              kHeight,
              isSub
                  ? OfferCard(img: img, place: place)
                  : OfferCard2(destination: destination, img: img)
            ]),
      ),
    );
  }
}
