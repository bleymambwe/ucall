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
          CustomCard(),
          SizedBox(
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
          SizedBox(
            height: 20,
          ),
          RecentTransactionsCard()
        ],
      ),
    );
  }
}

class RecentTransaction {
  final IconData icon;
  final String name;
  final String date;
  final double amount;

  RecentTransaction({
    required this.icon,
    required this.name,
    required this.date,
    required this.amount,
  });
}

class RecentTransactionsCard extends StatelessWidget {
  RecentTransactionsCard({Key? key});

  final List<RecentTransaction> transactions = [
    RecentTransaction(
      icon: Icons.factory_outlined,
      name: 'Pempe Milling',
      date: '2023-09-13',
      amount: 2500.00,
    ),
    RecentTransaction(
      icon: Icons.local_drink_sharp,
      name: 'Pepsi',
      date: '2023-09-15',
      amount: 1450.99,
    ),
    RecentTransaction(
      icon: Icons.restaurant,
      name: 'Hungry Lion',
      date: '2023-09-14',
      amount: 1050.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0x30FFDB58),
        child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (ctx, index) {
            final transaction = transactions[index];
            return Column(
              children: [
                ListTile(
                  leading: Icon(transaction.icon),
                  title: Text(transaction.name),
                  subtitle: Text(transaction.date),
                  trailing: Text(
                    '\K${transaction.amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: transaction.amount < 0 ? Colors.red : Colors.green,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.grey,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class TotalAmountWidget extends StatelessWidget {
  const TotalAmountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      //color: Colors.amber.withOpacity(0.5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'K5700',

                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      //color: Colors.brown,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  height: 60,
                  width: 60,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
