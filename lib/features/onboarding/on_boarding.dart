import 'package:ecommerce_mobile/features/onboarding/on_boarding2.dart';
import 'package:ecommerce_mobile/preference/assets.dart';
import 'package:ecommerce_mobile/preference/colors.dart';
import 'package:flutter/material.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: MainColor.primaryColor,
                image: DecorationImage(
                  image: AssetImage(MainAssets.onboarding1),
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
                  Text(
                    'Get The Freshest Fruit Salad Combo',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We deliver the best and freshest fruit\n salad in town. Order for a combo\n today!!!',
                  ),
                  SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecOnBoarding(),
                        ),
                      );
                    },
                    child: Text('Lets Continue!'),
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
