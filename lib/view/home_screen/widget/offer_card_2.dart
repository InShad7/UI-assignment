
import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class OfferCard2 extends StatelessWidget {
  const OfferCard2({
    super.key,
    required this.destination,
    required this.img,
  });

  final destination;
  final List img;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: destination ? Colors.transparent : white,
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
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3),
                    margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
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
                  Visibility(
                    visible: destination,
                    child: const Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        'Dubai',
                        style: TextStyle(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
