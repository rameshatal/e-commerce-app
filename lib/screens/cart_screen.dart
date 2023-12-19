import 'package:e_commerce_app/models/cart_item.dart';
import 'package:e_commerce_app/utils/color_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
          backgroundColor: kcontentColor,
          centerTitle: true,
          title: Text(
            'My Cart',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leadingWidth: 60,
          leading: Padding(
            padding: EdgeInsets.only(left: 5),
            child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(backgroundColor: Colors.white),
                icon: Icon(Ionicons.chevron_back)),
          )),
      bottomSheet: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  filled: true,
                  fillColor: kcontentColor,
                  hintText: 'Enter Discount Code',
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                  suffixIcon: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Apply',
                      style: TextStyle(
                          color: kprimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${cartItems.length > 1 ? cartItems.map<double>((e) => e.quantity * e.product.price).reduce((value1, value2) => value1 + value2) : cartItems[0].product.price * cartItems[0].quantity}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${cartItems.length > 1 ? cartItems.map<double>((e) => e.quantity * e.product.price).reduce((value1, value2) => value1 + value2) : cartItems[0].product.price * cartItems[0].quantity}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView.separated(
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 85,
                        width: 85,
                        decoration: BoxDecoration(
                          color: kcontentColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Image.network(cartItems[index].product.image),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartItems[index].product.title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            cartItems[index].product.category,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$${cartItems[index].product.price}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    right: 5,
                    top: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Ionicons.trash_outline,
                              color: Colors.red,
                              size: 20,
                            )),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: kcontentColor,
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    if (cartItems[index].quantity != 1) {
                                      setState(() {
                                        cartItems[index].quantity--;
                                      });
                                    }
                                  },
                                  iconSize: 18,
                                  icon: Icon(
                                    Ionicons.remove,
                                    color: Colors.black,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                cartItems[index].quantity.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      cartItems[index].quantity--;
                                    });
                                  },
                                  iconSize: 18,
                                  icon: Icon(
                                    Ionicons.add,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              height: 20,
            );
          },
          itemCount: cartItems.length),
    );
  }
}
