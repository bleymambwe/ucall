import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'service_provider.dart';
import 'service_description.dart';
import 'work_details.dart';

class BookingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(12.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  CustomBookingsAppBar(),
                  ProfileBar(),
                  GreyLine(),
                  ServiceProvider(),
                  GreyLine(),
                  ServiceDesciption(),
                  GreyLine(),
                  WorkDetails(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GreyLine extends StatelessWidget {
  const GreyLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 5,
      color: Color(0xFF53434354),
    );
  }
}
