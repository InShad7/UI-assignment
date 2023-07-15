import 'package:flutter/material.dart';
import 'package:sunruleui/view/destination_screen/widget/tab_bar.dart';
import 'package:sunruleui/view/home_screen/widget/app_bar.dart';
import 'package:sunruleui/view/place_details_screen/widget/category_tile.dart';
import 'package:sunruleui/view/place_details_screen/widget/custom_carosel.dart';
import 'package:sunruleui/view/place_details_screen/widget/top_card.dart';
import 'package:sunruleui/view/utils/utils.dart';

class PlaceDetails extends StatefulWidget {
  const PlaceDetails({super.key});

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
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
                height: 1500,
                child: Column(
                  children: [
                    TopCard2(isScrolled: _isScrolled),
                    kHeight20,
                    const CategoryTile(),
                    const CategoryTile(),
                    const CustomCurosel(),
                    SizedBox(
                      height: 30.0,
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: orange,
                        indicatorColor: orange,
                        tabs: myTabs2,
                      ),
                    ),
                    Expanded(
                      child: TabBarList(place: true),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
