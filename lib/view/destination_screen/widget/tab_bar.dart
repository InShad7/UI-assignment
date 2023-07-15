import 'package:flutter/material.dart';
import 'package:sunruleui/view/destination_screen/widget/east_asia.dart';
import 'package:sunruleui/view/place_details_screen/widget/place_card.dart';
import 'package:sunruleui/view/utils/utils.dart';

TabBarView TabBarList({place = false}) {
  return TabBarView(children: [
    Column(
      children: [
        kHeight,
        Expanded(child: place ? PlaceCard() : EastAsia()),
      ],
    ),
    Column(children: [
      kHeight,
      Expanded(child: SizedBox()),
    ]),
    Column(children: [
      kHeight,
      Expanded(child: SizedBox()),
    ]),
  ]);
}

final List<Tab> myTabs = <Tab>[
  const Tab(text: 'East asia'),
  const Tab(text: 'South east asia'),
  const Tab(text: 'South asia/middle east'),
];

final List<Tab> myTabs2 = <Tab>[
  const Tab(text: 'Picks for you'),
  const Tab(text: 'Fun to do'),
  const Tab(text: 'Where to stay'),
];
