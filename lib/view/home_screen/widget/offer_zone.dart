import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class OfferZone extends StatelessWidget {
  OfferZone({super.key, this.title, this.subtitle = '', this.isSub = false});
  final title;
  final subtitle;
  final isSub;
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
                  ? SizedBox(
                      height: mHeight! / 2.9,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 4),
                                  margin: const EdgeInsets.only(
                                      left: 8, top: 8, bottom: 8),
                                  height: mHeight! / 2.8,
                                  width: mWidth! / 2.1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Image.asset(
                                      'assets/dubai.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  top: 20,
                                  left: 20,
                                  child: Text(
                                    'Dubai',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              color: white,
                              height: mHeight! / 3,
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Stack(children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8),
                                          height: mHeight! / 6.6,
                                          width: mWidth! / 2.1,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            child: Image.asset(
                                              img[2],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          left: 20,
                                          child: Text(
                                            place[0],
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color: white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ]),
                                      Stack(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 8, top: 8, bottom: 8),
                                            height: mHeight! / 6.6,
                                            width: mWidth! / 2.1,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              child: Image.asset(
                                                img[0],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 20,
                                            child: Text(
                                              place[1],
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  color: white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(
                      color: white,
                      height: mHeight! / 2.9,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right: 4),
                                margin: const EdgeInsets.only(
                                    left: 8, top: 8, bottom: 8),
                                height: mHeight! / 3.3,
                                width: mWidth! / 2.1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    img[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
            ]),
      ),
    );
  }
}
