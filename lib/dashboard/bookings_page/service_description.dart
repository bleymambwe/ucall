import 'package:flutter/material.dart';

class ServiceDesciption extends StatelessWidget {
  const ServiceDesciption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(10),
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Home Services',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Skills required',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Cleaning, Mobbing,Dusting, Room Cleaning',
              style: TextStyle(),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Items to be maintained',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Kitchem, Rooms,Washroom, Dinning',
              style: TextStyle(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Description',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'The hotel will soon be hosting people and therefore needs urgent and careful cleanin. \n\n'
              'The cat should not be tempered with at basement in addition, the papers from the drawer should be removed and thrown away',
              style: TextStyle(
                fontSize: 15,
                //color: Colors.grey
              ),
            ),
          ],
        ),
      ),
    );
  }
}
