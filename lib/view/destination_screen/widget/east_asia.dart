import 'package:flutter/material.dart';
import 'package:sunruleui/view/home_screen/widget/popular_activity.dart';

class EastAsia extends StatelessWidget {
  const EastAsia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PopularActivity(eastAsia: true, title: 'Hong Kong & Macau'),
        PopularActivity(title: 'Taiwan', taiwan: true),
        PopularActivity(title: 'Japan', taiwan: true),
        PopularActivity(title: 'South Korea', taiwan: true),
      ],
    );
  }
}
