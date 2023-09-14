import 'package:flutter/material.dart';

class CustomBookingsAppBar extends StatelessWidget {
  const CustomBookingsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bookings',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        Icon(Icons.chat)
      ],
    );
  }
}

class ProfileBar extends StatelessWidget {
  const ProfileBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Circular Avatar with a link to an image
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/cleaners/afro-woman-cleaner.jpg'), // Replace with your image URL
              radius: 75,
              // Adjust the size of the avatar
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF53434354),
                ),
                child: Text('on going'),
              ),
            )
          ],
        ),
        SizedBox(height: 8.0), // Add some spacing
        // Colored Background
        Container(
          color: Color(0xFF53434354), // Background color
          padding: EdgeInsets.all(8.0),

          child: Text(
            'Musonda Mwansa',
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8.0), // Add some spacing
        // Star Icons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              color: Colors.amber, // Colored star
            ),
            Icon(
              Icons.star,
              color: Colors.amber, // Colored star
            ),
            Icon(
              Icons.star,
              color: Colors.amber, // Colored star
            ),
            Icon(
              Icons.star,
              color: Colors.amber, // Colored star
            ),
            Icon(
              Icons.star_border,
              color: Colors.amber, // Colored star outline
            ),
          ],
        ),
      ],
    );
  }
}
