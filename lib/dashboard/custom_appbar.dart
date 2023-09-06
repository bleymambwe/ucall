import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        ProfileAvatar(
          imagePath: 'assets/dashboard_assets/SamProfile.png',
          radius: 50,
          borderColor: Colors.white,
          borderWidth: 1,
        ),
        const SizedBox(
          width: 50,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Sam Lungu',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.white,
                ),
                Text(
                  'Lusaka, Zambia',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  final String imagePath;
  final double radius;
  final Color borderColor;
  final double borderWidth;

  ProfileAvatar({
    required this.imagePath,
    required this.radius,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage:
            AssetImage(imagePath), // Use AssetImage for local images
        backgroundColor: Colors.transparent, // Optional background color
      ),
    );
  }
}
