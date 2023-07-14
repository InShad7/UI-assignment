import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class RecentView extends StatelessWidget {
  const RecentView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mHeight! / 3.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Recently viewed',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'see more',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
          ),
          kHeight,
          Container(
            color: white,
            height: mHeight! / 3.8,
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
              width: mWidth! / 2.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/dubai.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  kHeight,
                  const Text(
                    'Burj khalifa at Top Observation',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  kHeight5,
                  const Text(
                    '₹ 3769',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
