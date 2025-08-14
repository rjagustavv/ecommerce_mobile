import 'package:ecommerce_mobile/features/home/screen/detail_screen.dart';
import 'package:ecommerce_mobile/preference/iconmobile_icons.dart';
import 'package:flutter/material.dart';

import '../model/item_model.dart';
import '../widget/food_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.name});

  final String? name;

  final List<String> category = [
    'Hottest',
    'Popular',
    'New combo',
    'Top',
    'Most liked',
    'Recently added',
    'Newest Added',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 24.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(IconMobile.iconParkSolidLike, size: 24, color: Color(0xfffFA451)),
              Column(
                children: [
                  Icon(IconMobile.mdiCart, size: 24, color: Color(0xfffFA451)),
                  SizedBox(width: 8),
                  Text(
                    'My Basket',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 16),

          Text(
            'Hello $name, What fruit salad\ncombo do you want today?',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),

          SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search for fruit salad combo',
                    prefixIcon: Icon(
                      IconMobile.biSearch,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Icon(IconMobile.mageFilterFill, size: 24, color: Color(0xfffFA451)),
            ],
          ),

          SizedBox(height: 35),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recommended Combo',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                    },
                    child: FoodItem(
                      item: ItemFoodModel(
                        imagepath: 'assets/images/food.png',
                        name: 'Quinoa fruit salad',
                        price: 'Rp. 25,000',
                      ),
                    ),
                  ),
                  FoodItem(
                    item: ItemFoodModel(
                      imagepath: 'assets/images/food.png',
                      name: 'Quinoa fruit salad',
                      price: 'Rp. 25,000',
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 60),
          SizedBox(
            height: 28,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  (category[index]),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 26);
              },
              itemCount: category.length,
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            height: 220,
            child: ListView(
              clipBehavior: Clip.none,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                FoodItem(
                  item: ItemFoodModel(
                    imagepath: 'assets/images/food.png',
                    name: 'Quinoa fruit salad',
                    price: 'Rp. 25,000',
                  ),
                ),
                SizedBox(width: 16),
                FoodItem(
                  item: ItemFoodModel(
                    imagepath: 'assets/images/food.png',
                    name: 'Quinoa fruit salad',
                    price: 'Rp. 25,000',
                  ),
                ),
                SizedBox(width: 16),
                FoodItem(
                  item: ItemFoodModel(
                    imagepath: 'assets/images/food.png',
                    name: 'Quinoa fruit salad',
                    price: 'Rp. 25,000',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
