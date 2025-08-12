import 'package:ecommerce_mobile/features/home/model/item_model.dart';
import 'package:ecommerce_mobile/features/home/screen/detail_screen.dart';
import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  const CardItem({super.key, required this.item});

  final CardItemModel item;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 200,
      decoration: BoxDecoration(
        color: widget.item.bgColor ?? Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0x2020200D),
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                  child: Image.asset(
                    widget.item.imagePath,
                    width: 80,
                    height: 80,
                  ),
                ),

                const SizedBox(height: 17.0),

                Text(
                  widget.item.nameFood,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 8.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money_rounded,
                          size: 16,
                          color: Color(0xffFFA451),
                        ),
                        Text(
                          widget.item.price,
                          style: TextStyle(color: Color(0xffFFA451)),
                        ),
                      ],
                    ),

                    const SizedBox(width: 38.0),

                    Container(
                      width: 24,
                      height: 24,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xffFFF2E7),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Color(0xffFFA451),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_outline_rounded,
                color: Color(0xffFFA451),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
