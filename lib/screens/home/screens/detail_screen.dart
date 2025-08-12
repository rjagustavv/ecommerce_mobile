import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFA451),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(color: Color(0xffFFA451)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70.0, left: 24),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 20,
                                ),
                                Text('Goback', style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Image.asset(
                    'assets/images/food1.png',
                    width: 180,
                    height: 180,
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 40, left: 24, right: 24),
              height: MediaQuery.of(context).size.height * 10,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Quinoa Fruit Salad',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border: Border.all(color: Color(0xff000000)),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(child: Icon(Icons.remove, size: 20)),
                          ),

                          SizedBox(width: 20),

                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          SizedBox(width: 20),

                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Color(0xffFFF2E7),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Color(0xffFFA451),
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Text(
                        '₦ 20.000',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0000000),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),
                  Divider(color: Colors.grey.withOpacity(0.2), thickness: 1),
                  SizedBox(height: 30),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'One Pack Contains',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: 155,
                        height: 2,
                        color: Color(0xffFFA451),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),
                  Text(
                    'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                    style: TextStyle(height: 2),
                  ),

                  SizedBox(height: 15),
                  Divider(color: Colors.grey.withOpacity(0.2), thickness: 1),
                  SizedBox(height: 15),

                  Text(
                    'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                    style: TextStyle(height: 2),
                  ),

                  SizedBox(height: 28),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: Color(0xffFFF7F0),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite_border_rounded
                                  : Icons.favorite,
                              size: 30,
                              color: Color(0xffFFA451),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 60),

                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFFA451),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Add to Basket',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
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
