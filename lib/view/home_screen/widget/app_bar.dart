import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar(
      {super.key, required bool isScrolled, this.details = false})
      : _isScrolled = isScrolled;

  final bool _isScrolled;
  final details;
  final Size preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 13.0, right: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: mHeight! / 23,
              width: details ? mWidth! / 1.3 : mWidth! / 1.2,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: _isScrolled ? cardClr2 : white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 13, top: 4),
                child: TextFormField(
                  controller: searchController,
                  cursorColor: grey,
                  style: const TextStyle(
                    color: grey,
                  ),
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(3),
                    hintText: 'Dubai - Observation decks',
                    icon: Icon(
                      Icons.search_rounded,
                      size: mHeight! / 42,
                    ),
                    hintStyle: TextStyle(
                      fontSize: mHeight! / 54,
                      color: grey,
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: !details,
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 32,
                color: _isScrolled ? black : white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
