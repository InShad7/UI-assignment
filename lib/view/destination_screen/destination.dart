import 'package:flutter/material.dart';
import 'package:sunruleui/view/destination_screen/widget/tab_bar.dart';
import 'package:sunruleui/view/destination_screen/widget/top_card.dart';
import 'package:sunruleui/view/home_screen/widget/app_bar.dart';
import 'package:sunruleui/view/home_screen/widget/offer_zone.dart';
import 'package:sunruleui/view/utils/utils.dart';

class DestinationScreen extends StatefulWidget {
  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
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
    if (_scrollController.offset > 0 && !_isScrolled) {
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
                elevation: 0,
                backgroundColor: white,
                actions: [
                  CustomAppBar(isScrolled: _isScrolled),
                ],
              )
            : null,
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SizedBox(
                height: 1750,
                child: Stack(
                  children: [
                    SizedBox(
                      height: mHeight! / 2.5,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/sea.jpg',
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.white.withOpacity(0),
                                  Colors.white.withOpacity(0.9),
                                ],
                                stops: [0.0, 10.0],
                                tileMode: TileMode.clamp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const TopCard(),
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
