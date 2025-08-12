import 'package:ecommerce_mobile/preference/iconmobile_icons.dart';
import 'package:ecommerce_mobile/screens/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SecondOnBoarding extends StatefulWidget {
  const SecondOnBoarding({super.key});

  @override
  State<SecondOnBoarding> createState() => _SecondOnBoardingState();
}

class _SecondOnBoardingState extends State<SecondOnBoarding> {
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 65,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFFA451),
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding2.png'),
                  alignment: Alignment(0, 0.7),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 35,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
              decoration: BoxDecoration(color: Color(0xffFFFFFF)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'What is Your Name?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(hintText: 'Enter Your Name'),
                  ),
                  SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      String name = _nameController.text;
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen(name: _nameController.text),
                        ),
                        (route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Color(0xffFFA451),
                      foregroundColor: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    child: Text('Start Ordering'),
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
