import 'package:flutter/material.dart';
import 'package:sunruleui/view/home_screen/widget/app_bar.dart';
import 'package:sunruleui/view/home_screen/widget/category_2.dart';
import 'package:sunruleui/view/home_screen/widget/category_card.dart';
import 'package:sunruleui/view/home_screen/widget/offer_zone.dart';
import 'package:sunruleui/view/home_screen/widget/popular_activity.dart';
import 'package:sunruleui/view/home_screen/widget/recent_view.dart';
import 'package:sunruleui/view/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    mHeight = MediaQuery.of(context).size.height;
    mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _isScrolled ? white : orange,
        actions: [
          CustomAppBar(isScrolled: _isScrolled),
        ],
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          CategoryCard(),
          kHeight,
          SecondCategoryCard(),
          const RecentView(),
          OfferZone(title: 'Offers for travel info'),
          OfferZone(
            title: 'Where will you find joy?',
            subtitle: 'see more',
            isSub: true,
          ),
          PopularActivity(
            title: 'Popular activities',
          )
        ],
      ),
    );
  }
}
