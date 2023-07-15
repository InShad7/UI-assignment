
import 'package:flutter/material.dart';
import 'package:sunruleui/view/place_details_screen/place_details_screen.dart';
import 'package:sunruleui/view/utils/utils.dart';

class EastAsiaCard extends StatelessWidget {
  const EastAsiaCard({
    super.key,
    required this.eastAsia,
    required this.taiwan,
  });

  final  eastAsia;
  final  taiwan;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: eastAsia
          ? mHeight! / 5.5
          : taiwan
              ? mHeight! / 5.5
              : mHeight! / 3.1,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaceDetails(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(right: 4),
                      margin: const EdgeInsets.only(
                          left: 8, top: 8, bottom: 8),
                      height: mHeight! / 6.6,
                      width: mWidth! / 2.1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          taiwan
                              ? 'assets/bali.webp'
                              : 'assets/dubai.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: (eastAsia || taiwan),
                    child: const Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        'Dubai',
                        style: TextStyle(
                            fontSize: 18,
                            color: white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              kHeight3,
              Visibility(
                visible: (!eastAsia && !taiwan),
                child: Container(
                  width: 120,
                  margin: const EdgeInsets.only(left: 14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Dubai',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: grey,
                        ),
                      ),
                      kHeight5,
                      Text(
                        'Burj khalifa at Top Observation',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      kHeight5,
                      Text(
                        '⭐ 4.3 (9,999)',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      kHeight5,
                      Text(
                        'Best seller',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: grey,
                        ),
                      ),
                      kHeight5,
                      Text(
                        '₹ 3769',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
