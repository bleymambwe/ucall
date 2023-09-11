import 'package:flutter/material.dart';
import 'account.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomCard(),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 1,
          ),
          TotalAmountWidget(),
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          RecentTransactionsCard()
        ],
      ),
    );
  }
}
