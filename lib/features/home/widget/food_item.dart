import 'package:ecommerce_mobile/features/home/model/item_model.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({super.key, required this.item});

  final ItemFoodModel item;

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 220,
      decoration: BoxDecoration(
        color: widget.item.bgColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            color: Color(0xff2020200D).withOpacity(0.05),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(widget.item.imagepath, width: 90, height: 90),
              SizedBox(height: 16),
              Text(
                widget.item.name,
                style: TextStyle(fontWeight: FontWeight.w500),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.item.price,
                    style: TextStyle(color: Color(0xfffF08626)),
                  ),
                  SizedBox(width: 18),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xfffFFF2E7),
                    ),
                    child: Icon(Icons.add, size: 24, color: Color(0xfffFA451)),
                  ),
                ],
              ),
            ],
          ),

          Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon(
                isFavorite ? Icons.favorite_border_rounded : Icons.favorite,
                size: 16,
                color: Color(0xfffFFA451),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
