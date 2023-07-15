import 'package:flutter/material.dart';
import 'package:sunruleui/view/destination_screen/widget/tab_bar.dart';
import 'package:sunruleui/view/home_screen/widget/offer_zone.dart';
import 'package:sunruleui/view/utils/utils.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Where will you find joy?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.white,
            ),
          ),
          kHeight50,
          Container(
            height: mHeight! / 22,
            width: mWidth! / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: cardClr2,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 9, top: 4),
              child: TextFormField(
                controller: searchController,
                cursorColor: grey,
                style: const TextStyle(
                  color: grey,
                ),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.all(3),
                  hintText: 'Dubai - Observation decks',
                  icon: Icon(
                    Icons.search_rounded,
                    size: 20.0,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 16.0,
                    color: grey,
                  ),
                ),
              ),
            ),
          ),
          kHeight,
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: const Text('Bali'),
                  backgroundColor: cyan,
                ),
                Chip(
                  label: const Text('Dubai'),
                  backgroundColor: cyan,
                ),
                const Icon(
                  Icons.delete_outline_rounded,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          OfferZone(destination: true),
          Container(
            height: 30.0,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: orange,
              indicatorColor: orange,
              tabs: myTabs,
            ),
          ),
          Expanded(child: TabBarList()),
        ],
      ),
    );
  }
}
