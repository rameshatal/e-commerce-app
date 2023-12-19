import 'package:e_commerce_app/category.dart';
import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/screens/product_screen.dart';
import 'package:e_commerce_app/utils/color_constant.dart';
import 'package:e_commerce_app/widgets/page_slider.dart';
import 'package:e_commerce_app/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///AppBar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: kcontentColor,
                        padding: EdgeInsets.all(15),
                      ),
                      iconSize: 30,
                      icon: Icon(Ionicons.grid_outline),
                    ),
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: kcontentColor,
                        padding: EdgeInsets.all(15),
                      ),
                      iconSize: 30,
                      icon: Icon(Ionicons.notifications_outline),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                /// TextField
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kcontentColor,
                  ),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5)),
                      Icon(
                        Ionicons.search,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 1.5,
                        color: Colors.grey,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Ionicons.options_outline,
                            color: Colors.grey,
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                ///PageSlider
                PageSlider(
                  onChange: (value) {
                    setState(() {
                      currentSlide = value;
                    });
                  },
                  currentSlide: currentSlide,
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 90,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(category[index].image),
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              category[index].title,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            width: 20,
                          ),
                      itemCount: category.length),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Special For You',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('See all'),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              GridView.builder(
          itemCount: products.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
