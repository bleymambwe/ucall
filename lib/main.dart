import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

import 'login/login.dart';
import 'package:ucall/counterModel.dart';
import 'onBoarding/onboarding_comp.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => CounterModel()),
      // ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ], child: Home()),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0x90FFDB58), fontFamily: 'Josefin_Sans'),
      home: Scaffold(
        body: Container(
          color: const Color(0x90FFDB58),
          child: OnBoarding(),
        ),
      ),
    );
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key});

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            children: const [
              OnboardingComp(
                isFirstPage: true,
                text: 'UCALL',
              ),
              OnboardingComp(
                text: 'for high quality workers to deliver on time',
                asset_link: 'assets/onboarding_assets/worker_factory.jpg',
              ),
              OnboardingComp(
                text: 'zero hour contract to deliver when needed',
                asset_link: 'assets/onboarding_assets/worker_restaurant.jpg',
              ),
            ],
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
          // "Skip" button positioned in the top right corner
          Positioned(
            top: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(), // Navigate to LoginPage
                  ),
                );
              },
              child: const Row(
                children: [
                  Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown, // Customize the color as needed
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(LineIcons.forward),
                ],
              ),
            ),
          ),
          if (currentPage == 2) // Show the container on the last page.
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              bottom: currentPage == 2 ? 20 : -100, // Slide up from bottom.
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const LoginPage(), // Navigate to LoginPage
                    ),
                  );
                },
                child: Container(
                  height: 100, // Adjust the height as needed.
                  color: const Color(0x80ffDB58), // Change the color as needed.
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
