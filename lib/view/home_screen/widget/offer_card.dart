
import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    super.key,
    required this.img,
    required this.place,
  });

  final List img;
  final List place;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
      );
  }
}
