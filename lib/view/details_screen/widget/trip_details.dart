import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      padding: const EdgeInsets.all(9),
      // height: mHeight! / 5,
      width: mWidth,
      decoration: BoxDecoration(
        color: const Color.fromARGB(143, 252, 228, 236),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '\u2022 ',
                  style: TextStyle(
                    fontSize: 25,
                    color: black,
                  ),
                ),
                TextSpan(
                  text:
                      'Take a day trip to Northeast corner of Burj Khalifa top observatory take a day trip to Northeast corner of Burj Khalifa ake a day trip to Northeast corner of Burj Khalifa ake a day trip to Northeast corner of Burj Khalifa',
                  style: TextStyle(
                    fontSize: 18,
                    color: black,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/like.png',
              scale: 8,
            ),
          )
        ],
      ),
    );
  }
}
