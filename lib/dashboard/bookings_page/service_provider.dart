import 'package:flutter/material.dart';

class ServiceProvider extends StatelessWidget {
  const ServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Musonda Services ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '0965 23 54 78',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.location_pin),
              SizedBox(
                width: 5,
              ),
              Text('79 Florida St, Emmasdale, Lusaka'),
            ],
          ),
        ],
      ),
    );
  }
}
