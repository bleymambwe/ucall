import 'package:flutter/material.dart';
import 'package:ucall/main.dart';
import 'package:ucall/custom_widgets.dart';

import 'package:line_icons/line_icons.dart';

import 'package:ucall/dashboard/dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0x80FFDB58), fontFamily: 'Josefin_Sans'),
      home: Scaffold(
        body: Stack(children: [
          Container(
            color: const Color(0x90FFDB58),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                    //borderRadius: BorderRadius.circular(30),
                    color: Color(0x80FFDB58),
                  ),
                )),
                Flexible(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0x90FFDB58),
                      ),
                      child: Center(
                        child: CustomContainer(
                          height: 500,
                          width: 300,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.mail),
                                  CustomTextField(
                                    hintText: 'Email',
                                    textController: emailController,
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    LineIcons.lock,
                                  ),
                                  CustomTextField(
                                      hintText: 'password',
                                      textController: passwordController),
                                ],
                              ),
                              const Text(
                                'forgot password?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 164, 107, 87)),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Dashboard(), // Navigate to LoginPage
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0x90FFDB58)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Sign in',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 164, 107, 87),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Home(), // Navigate to LoginPage
                  ),
                );
              },
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black, // Customize the color as needed
                    ),
                  ),
                  Icon(LineIcons.backward)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textController;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.1),
      height: 80,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          controller: textController, // Added controller here
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              onPressed: () {
                textController.clear();
              },
              icon: const Icon(Icons.clear),
            ),
          ),
        ),
      ),
    );
  }
}
