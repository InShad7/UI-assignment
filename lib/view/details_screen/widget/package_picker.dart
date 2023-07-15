
import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class PackagePicker extends StatelessWidget {
  const PackagePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Package type',
            style: TextStyle(
              fontSize: 20,
              color: grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          kHeight,
          Container(
            height: mHeight! / 6,
            // color: Colors.amber,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => Stack(
                children: [
                  Container(
                    width: mWidth! / 1.5,
                    height: mHeight! / 6.8,
                    margin:const  EdgeInsets.all(5),
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(
                        width: 1,
                        color: grey,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Day Tour - Breakfast - Dinner - Travel - Accomodation",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '₹ 3769',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                  ),
                  Positioned(
                    right: 4.5,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 25,
                      decoration: BoxDecoration(
                          color: orange,
                          borderRadius:
                              BorderRadius.circular(6)),
                      child: const Text(
                        '20% OFF',
                        style: TextStyle(
                            color: white, fontSize: 14),
                      ),
                    ),
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
