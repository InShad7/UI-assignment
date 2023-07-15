
import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class DayPicker extends StatelessWidget {
  const DayPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight! / 7.4,
      // color: white,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(14),
                height: 30,
                width: 10,
                decoration: BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SizedBox(),
              ),
             const  Text(
                'Package options',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            height: 32,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kWidth,
                  Container(
                    padding: const EdgeInsets.all(6),
                    height: 30,
                    decoration: BoxDecoration(
                        color: cardClr2,
                        border:
                            Border.all(width: 1, color: grey),
                        borderRadius:
                            BorderRadius.circular(15)),
                    child: Text(days[index]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

List days = ['Tomorrow', 'July 14', 'July 15', 'July 16'];
