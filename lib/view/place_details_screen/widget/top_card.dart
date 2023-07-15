import 'package:flutter/material.dart';
import 'package:sunruleui/view/home_screen/widget/app_bar.dart';
import 'package:sunruleui/view/place_details_screen/widget/custom_carosel.dart';
import 'package:sunruleui/view/utils/utils.dart';

class TopCard2 extends StatelessWidget {
  const TopCard2({super.key, this.isScrolled = false, this.details = false});
  final isScrolled;
  final details;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.amber,
          child: Container(
            height: mHeight! / 3,
            decoration: BoxDecoration(
              color: white,
              // image: DecorationImage(
              //   image: AssetImage(details ? '' : 'assets/dubai.jpg'),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: details
                ? CustomCurosel(details: true)
                : Container(
                    width: mWidth,
                    child: Image.asset(
                      'assets/dubai.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
        ),
        Positioned(
          top: 50,
          child: Container(
            width: mWidth,
            child: Row(
              mainAxisAlignment: details
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                details
                    ? SizedBox(
                        width: mWidth! / 2.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            CustomIcon(icon: Icons.favorite_border),
                            CustomIcon(icon: Icons.share),
                            CustomIcon(icon: Icons.shopping_cart_outlined),
                            kWidth,
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13),
                        child: Container(
                          height: mHeight! / 23,
                          width: mWidth! / 1.3,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isScrolled ? cardClr2 : white,
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
                      ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: !details,
                child: Row(
                  children: const [
                    Text(
                      'Dubai',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: white,
                      ),
                    ),
                    kWidth,
                    Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: white,
                    )
                  ],
                ),
              ),
              kHeight5,
              Container(
                padding: const EdgeInsets.only(right: 40),
                width: mWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: !details,
                      child: Container(
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(153, 0, 0, 0),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: white,
                            ),
                            Text(
                              'What to know',
                              style: TextStyle(
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(153, 0, 0, 0),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.image_outlined,
                            size: 20,
                            color: white,
                          ),
                          Text(
                            'Gallery',
                            style: TextStyle(
                              color: white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, this.icon});
  final icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: white,
      child: Icon(
        icon,
        color: grey,
      ),
    );
  }
}
