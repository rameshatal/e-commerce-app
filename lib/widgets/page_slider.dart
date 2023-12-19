import 'package:flutter/material.dart';

class PageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const PageSlider({super.key, required this.onChange, required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: onChange,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1REAkLpVjt0zLAV-gxC5AMe2GnlVuIovsWw&usqp=CAU'),
                        fit: BoxFit.fill)),
              );
            },
          ),
        ),
        Positioned.fill(
            bottom: 10,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                        (index) => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: currentSlide== index ? 15 : 8,
                      height: 8,
                      margin: EdgeInsets.only(right: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color : currentSlide== index ? Colors.black : Colors.transparent,
                          border: Border.all(color: Colors.black)),
                    ),
                  ),
                )))
      ],
    );
  }
}
