import 'package:ecommerce_mobile/preference/iconmobile_icons.dart';
import 'package:ecommerce_mobile/features/home/model/item_model.dart';
import 'package:ecommerce_mobile/features/home/widget/food_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.name});

  final String? name;

  final List<String> category = [
    'Hottest',
    'Popular',
    'Top',
    'Most Liked',
    'Recently Added',
    'Newest',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 24),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(IconMobile.biFilterRight, size: 34),
                Column(children: [Icon(IconMobile.mdiCart, size: 24)]),
              ],
            ),
            SizedBox(height: 35),
            Text(
              'Hello $name, What fruit salad\n combo do you want today?',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 35),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search for fruit salad combos',
                      prefixIcon: Icon(
                        IconMobile.biSearch,
                        color: Color(0xff86869E),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 22),
                Icon(IconMobile.mageFilterFill, size: 25),
              ],
            ),
            SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Recommended Combo',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodItem(
                      item: ItemFoodModel(
                        imagepath: 'assets/images/combo1.png',
                        name: 'Honey lime Combo',
                        price: 'Rp.2000',
                      ),
                    ),
                    FoodItem(
                      item: ItemFoodModel(
                        imagepath: 'assets/images/combo2.png',
                        name: 'Berry mango combo',
                        price: 'Rp. 8.000',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60),
            SizedBox(
              height: 25,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    category[index],
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
                      imagepath: 'assets/images/food1.png',
                      name: 'Quinoa fruit salad',
                      price: 'Rp. 8.000',
                    ),
                  ),
                  SizedBox(width: 16),
                  FoodItem(
                    item: ItemFoodModel(
                      imagepath: 'assets/images/food2.png',
                      name: 'Tropical fruit salad',
                      price: 'Rp. 10.000',
                    ),
                  ),
                  SizedBox(width: 16),
                  FoodItem(
                    item: ItemFoodModel(
                      imagepath: 'assets/images/food3.png',
                      name: 'Melon fruit salad',
                      price: 'Rp. 10.000',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
