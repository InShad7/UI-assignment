import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class PlaceTiles extends StatelessWidget {
  const PlaceTiles({super.key, this.length, this.details=false});
  final length;
  final details;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: mWidth,
      // color: blue,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 4),
                padding: const EdgeInsets.all(5),
                height: 36,
                decoration: BoxDecoration(
                    color: details ? cardClr2 : white,
                    border: Border.all(width: 1, color: cardClr2),
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Text(
                    place[index],
                    style: TextStyle(fontSize: 14),
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

List place = [
  'Taitung',
  'Taichung',
  'Kaohsiung',
  'Penghu',
  'Taitung',
  'Taichung',
  'Kaohsiung',
  'Penghu'
];
