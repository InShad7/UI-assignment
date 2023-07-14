import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class SecondCategoryCard extends StatelessWidget {
  SecondCategoryCard({super.key});

  List text = [
    'Cruise',
    'Private airport transfers',
    'Outdoors and sports',
    'Events'
  ];
  List icon = [
    Icon(Icons.directions_boat, color: blueS),
    const Icon(
      Icons.flight_takeoff_outlined,
      color: teal,
    ),
    const Icon(
      Icons.forest,
      color: green,
    ),
    const Icon(
      Icons.celebration,
      color: orange,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      height: mHeight! / 8,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(13),
            margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
            width: mWidth! / 3.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1, color: greyS),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    text[index],
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: icon[index],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
