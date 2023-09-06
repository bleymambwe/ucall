import 'package:flutter/material.dart';

class OnboardingComp extends StatelessWidget {
  final String text;
  final String asset_link;

  final bool isFirstPage; // New parameter to indicate if it's the first page.

  const OnboardingComp({
    required this.text,
    this.asset_link = 'None',
    this.isFirstPage = false,
    // Default to false if not specified.
  });

  @override
  Widget build(BuildContext context) {
    if (isFirstPage == false) {
      // Return a Container for the first page.
      return Container(
        //color: Colors.transparent.withOpacity(3),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                this.asset_link,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              this.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      );
    } else {
      // Return the existing Column for other pages.
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            this.text,
            style: TextStyle(fontSize: 50, fontFamily: 'Maharlika'),
          ),
          const Text(
            'for everything',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      );
    }
  }
}
