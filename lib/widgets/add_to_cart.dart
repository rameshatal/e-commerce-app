import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../utils/color_constant.dart';

class AddToCart extends StatelessWidget {
  final Function() onAdd;
  final Function() onRemove;

   AddToCart({super.key,
     required this.onAdd,
     required this.onRemove,
     required this.currentNumber,});

 final int currentNumber ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: onRemove,
                      iconSize: 18,
                      icon: Icon(
                        Ionicons.remove,
                        color: Colors.white,
                      )),
                  SizedBox(width: 5,),
                  Text(currentNumber.toString(), style: TextStyle(color: Colors.white),),
                  SizedBox(width: 5,),
                  IconButton(onPressed: onAdd,
                      iconSize: 18,icon: Icon(Ionicons.add,color: Colors.white,))
                ],
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: kprimaryColor,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text('Add to Cart',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
