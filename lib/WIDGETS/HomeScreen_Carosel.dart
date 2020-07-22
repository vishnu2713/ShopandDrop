import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomeScreenCarousel extends StatefulWidget {
  @override
  _HomeScreenCarouselState createState() => _HomeScreenCarouselState();
}

class _HomeScreenCarouselState extends State<HomeScreenCarousel> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsetsDirectional.only(start: size.width * 0.01),
      height: size.height * 0.24,
      child: Container(
          height: size.height * 0.24,
          width: size.width,
          child: Carousel(
            autoplay: true,
            animationDuration: Duration(milliseconds: 1500),
            dotBgColor: Colors.transparent,
            dotSize: 4,
            indicatorBgPadding: 0,
            images: [
              Image.network(
                "https://shop.shopndrop.qa/wp-content/uploads/2020/03/bg3.png",
                fit: BoxFit.fill,
              ),
              Image.network(
                "https://shop.shopndrop.qa/wp-content/uploads/2020/03/bg2.png",
                fit: BoxFit.fill,
              ),
              Image.network(
                "https://shop.shopndrop.qa/wp-content/uploads/2020/03/bg4.png",
                fit: BoxFit.fill,
              ),
              Image.network(
                "https://shop.shopndrop.qa/wp-content/uploads/2020/03/bg1.png",
                fit: BoxFit.fill,
              ),
            ],
          )),
    );
  }
}
