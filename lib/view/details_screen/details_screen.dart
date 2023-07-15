import 'package:flutter/material.dart';
import 'package:sunruleui/view/details_screen/widget/day_picker.dart';
import 'package:sunruleui/view/details_screen/widget/package_picker.dart';
import 'package:sunruleui/view/details_screen/widget/title_card.dart';
import 'package:sunruleui/view/details_screen/widget/trip_details.dart';
import 'package:sunruleui/view/home_screen/widget/app_bar.dart';
import 'package:sunruleui/view/place_details_screen/widget/top_card.dart';
import 'package:sunruleui/view/utils/utils.dart';

import 'widget/add_cart.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    if (_scrollController.offset > 1 && !_isScrolled) {
      setState(() {
        _isScrolled = true;
      });
    } else if (_scrollController.offset <= 0 && _isScrolled) {
      setState(() {
        _isScrolled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _isScrolled
            ? AppBar(
                backgroundColor: white,
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: black,
                      )),
                  CustomAppBar(isScrolled: _isScrolled, details: true),
                ],
              )
            : null,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          child: Column(
            children: [
              SizedBox(
                height: 1170,
                child: Column(
                  children: const [
                    TopCard2(details: true),
                    TitleCard(),
                    TripDetails(),
                    DayPicker(),
                    PackagePicker()
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: AddCart(),
      ),
    );
  }
}
