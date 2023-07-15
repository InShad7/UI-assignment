
import 'package:flutter/material.dart';
import 'package:sunruleui/view/utils/utils.dart';

class SeeMoreBtn extends StatelessWidget {
  const SeeMoreBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(50, 50),
          padding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(width: 1, color: grey),
          ),
          backgroundColor: Colors.white,
        ),
        child: const Center(
          child: Text(
            'see more',
            style: TextStyle(
              color: black,
            ),
          ),
        ),
      ),
    );
  }
}
