import 'package:flutter/material.dart';
import 'package:sunruleui/view/details_screen/details_screen.dart';
import 'package:sunruleui/view/home_screen/widget/see_more_btn.dart';
import 'package:sunruleui/view/utils/utils.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Get the best of Dubai',
            style: TextStyle(
              fontSize: 22,
              color: black,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: mHeight! / 5.6,
                color: white,
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.all(13),
                    height: 110,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/canada.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mHeight! / 10,
                    width: mWidth! / 1.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Tokyo Disney Resort Park',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '⭐ 4.3 (24,999)  1M+ booked ',
                          style: TextStyle(
                            fontSize: 16,
                            color: grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '₹ 3769',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          const SeeMoreBtn(),
        ],
      ),
    );
  }
}
