import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class PopularActivity extends StatelessWidget {
  const PopularActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mHeight! / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12, top: 12),
            child: Text(
              'Recently viewed',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          kHeight,
          Container(
            color: white,
            height: mHeight! / 3.1,
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
                    Container(
                      margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                      height: mHeight! / 6.6,
                      width: mWidth! / 2.1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          'assets/dubai.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    kHeight3,
                    Container(
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
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(50, 50),
                padding: const EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(width: 1, color: grey),
                ),
                backgroundColor: Colors.white,
              ),
              child: const Center(
                child: Text(
                  'see more',
                  style: TextStyle(
                    color: black,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
