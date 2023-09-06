import 'package:flutter/material.dart';

class JobsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 30,
          ),
          CustomCard()
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.money,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Premium Debits',
                ),
                SizedBox(
                  width: 135,
                ),
                Image.asset(
                  'assets/account_assets/absa.png',
                  height: 80,
                  width: 80,
                )
              ],
            ),
            Text(
              '4001 1432 5688 1997',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 30,
                  fontFamily: 'OCRB'),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/account_assets/chip.png',
                  width: 55,
                  height: 55,
                ),
                SizedBox(
                  width: 205,
                ),
                Image.asset(
                  'assets/account_assets/visa.png',
                  height: 50,
                  width: 80,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
