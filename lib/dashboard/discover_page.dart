import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:ui';

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color(0x90FFDB58),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CustomSearchBar(),
              Expanded(
                child: CustomListBar(), // Wrap CustomTabBar with Expanded
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical, // Set the scroll direction to horizontal
      itemCount: 10, // Replace with the actual number of items
      itemBuilder: (context, index) {
        // Replace the following with your custom item widget
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              // color: Colors.amber.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 300, // Adjust the width of each item
            // Replace with your desired item content
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomListBarBackground(),
                BackdropFilter(
                  filter: ImageFilter.dilate(radiusX: 10),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.amber.withOpacity(0.5),
                        Colors.amber.withOpacity(0.3),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      //child: Text('$hashCode'),
                      ),
                ),
                CustomStackedContainer()
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomStackedContainer extends StatelessWidget {
  const CustomStackedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 80,
                  width: 150,
                  child: Center(
                    child: Text(
                      'Venice Hotel',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration:
                      BoxDecoration(color: Colors.amber.withOpacity(0.5)),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Waiter',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '25 - Oct - 2023',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '07:00 - 18:00',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.5),
                  ),
                  child: Text(
                    'Total Pay',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    //border: Border,
                    color: Colors.amber.withOpacity(0.5),
                  ),
                  child: Text(
                    'K75',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                ),
              ],
            )
          ],
        ),
        Center(
          child: Container(
            width: 300,
            height: 80,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(),
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
        )
      ],
    );
  }
}

class CustomListBarBackground extends StatelessWidget {
  const CustomListBarBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.transparent.withOpacity(0.1),
      ),
      height: 300,
      child: BackdropFilter(
        // blendMode: BlendMode.clear,
        filter: ImageFilter.blur(
          sigmaX: 0,
          sigmaY: 3,
        ),
        child: Image.asset(
          'assets/dashboard_assets/venice_hotel.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  @override
  final searchController = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Color(0x90FFDB58),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.2),
              ),
              child: const Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 3),
          IconButton(
            icon: const Icon(Icons.clear, color: Colors.white),
            onPressed: () {
              setState() {
                searchController.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
