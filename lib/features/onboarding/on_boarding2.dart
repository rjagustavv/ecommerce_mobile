import 'package:ecommerce_mobile/features/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class SecOnBoarding extends StatefulWidget {
  const SecOnBoarding({super.key});

  @override
  State<SecOnBoarding> createState() => _SecOnBoardingState();
}

class _SecOnBoardingState extends State<SecOnBoarding> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFFA451),
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding2.png'),
                  alignment: Alignment(0, 0.5),
                  scale: 1.0,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
              decoration: BoxDecoration(color: Color(0xffFFFFFF)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What is your firstname?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter your first name',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      String nameController = _nameController.text;
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen(name: nameController),
                        ),
                        (route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFA451),
                      foregroundColor: Color(0xffFFFFFF),
                    ),
                    child: Text(
                      "Lets Continue",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
