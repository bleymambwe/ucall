import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(12.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                CustomTopBar(),
                SizedBox(height: 20),
                Align(alignment: Alignment.centerLeft, child: IntroAndName()),
                SizedBox(height: 20),
                CustomSearchBar(),
                SizedBox(height: 20),
                RowTextWidget(
                  leftText: 'Service Categories',
                  leftWeight: FontWeight.bold,
                  leftFontSize: 20,
                  rightText: 'Show More',
                ),
                SizedBox(height: 20),
                CustomListBar(),
                //Line
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.black,
                ),
                SizedBox(height: 20),
                RowTextWidget(
                    leftText: 'Job Applicants', rightText: 'Show More'),
                SizedBox(height: 20),
                ApplicantListBar(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ApplicantListItem extends StatelessWidget {
  final int index;
  final List<String> applicantsImageLinks = [
    'assets/cleaners/afro-woman-cleaner.jpg',
    'assets/cleaners/cleaning-guy.png',
  ];

  ApplicantListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 200, // Set the desired width for your square item
            height: 250, // Set the desired height for your square item
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(
                  8.0), // Rounded corners with a radius of 8
              color: Colors.amber, // Change the color as needed
            ),
            child: Center(
              child: Image.asset(
                applicantsImageLinks[index],
                fit: BoxFit.fill,
                //width: 200, // Set the desired width for the image
                //height: 200, // Set the desired height for the image
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              height: 85,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'Chikondi',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('Cleaner')
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('5')
                          ],
                        ),
                        Text('K245')
                      ])
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ApplicantListBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ApplicantListItem(0),
          SizedBox(
            width: 10,
          ),
          ApplicantListItem(1),
          // Add more ApplicantListItems as needed
        ],
      ),
    );
  }
}

class CustomListBar extends StatelessWidget {
  final List<String> service_category_images = [
    'assets/service_categories/cleaning.jpg',
    'assets/service_categories/car_wash.png',
    'assets/service_categories/laundry.jpg',
    'assets/service_categories/painting.png',
  ];

  final List<String> image_names = [
    'Cleaning',
    'Car Cleaning',
    'Laundry',
    'Painting'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      height: 167, // Set the desired height for your list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4, // Number of items in the list
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomListItem(
              imageLink: service_category_images[
                  index], // Replace with your desired icon
              label: image_names[index],
              // Use the corresponding label from the list
            ),
          );
        },
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  final String imageLink;
  final String label;

  CustomListItem({required this.imageLink, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
      },
      child: Column(
        children: [
          Container(
            width: 100, // Set the desired width for your round icon
            height: 100, // Set the desired height for your round icon
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent, // Change the color as needed
            ),
            child: Image.asset(
              imageLink,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 15), // Adjust the spacing between icon and label
          Text(
            label,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class RowTextWidget extends StatelessWidget {
  final String leftText;
  final String rightText;
  final FontWeight leftWeight;
  final FontWeight rightWeight;
  final double leftFontSize;
  final double rightFontSize;

  RowTextWidget({
    Key? key,
    required this.leftText,
    required this.rightText,
    this.leftWeight = FontWeight.normal,
    this.rightWeight = FontWeight.normal,
    this.leftFontSize = 14,
    this.rightFontSize = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: TextStyle(fontSize: leftFontSize, fontWeight: leftWeight),
        ),
        Text(
          rightText,
          style: TextStyle(fontSize: rightFontSize, fontWeight: rightWeight),
        )
      ],
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  @override
  final searchController = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      //color: Color(0x90FFDB58),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber.withOpacity(0.2),
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
          Container(
            width: 5,
            child: IconButton(
              icon: const Icon(Icons.clear, color: Colors.white),
              onPressed: () {
                setState() {
                  searchController.clear();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class IntroAndName extends StatelessWidget {
  const IntroAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Hello, Musonda',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'What are you looking for',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.location_pin),
              SizedBox(
                width: 25,
              ),
              Container(
                //width: 90,
                child: Text(
                  '6 Vubu Rd, Emmasdale, Lusaka',
                  // textAlign: TextAlign.justify,
                ),
              ),
            ]),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.message),
            SizedBox(
              width: 25,
            ),
            Icon(Icons.notification_important_sharp)
          ],
        )
      ],
    );
  }
}
