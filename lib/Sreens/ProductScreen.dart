import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ProductScreen extends StatefulWidget {
  List images;
  String pName, pPrice, sepefication, discription;
  int pID, stock;
  ProductScreen(
      {this.images,
      this.pID,
      this.discription,
      this.pName,
      this.pPrice,
      this.sepefication,
      this.stock});
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
         leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
      ),
      body: Container(
           margin: EdgeInsets.only(left: size.width*0.1),
          height: size.height * 0.3,
          width: size.width * 0.8,
          // color: Colors.black12,
          child: Wrap(
            children: List.generate(
              widget.images.length,
              (index) {
                return Container(
                  height: size.height * 0.3,
                  width: size.width,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: new Image.network(
                          widget.images[index].src,
                          fit: BoxFit.fitHeight,
                        ),
                      );
                    },
                    itemCount: widget.images.length,
                    pagination: new SwiperPagination(),
                    // control: new SwiperControl(size: 12, color: Colors.white),
                  ),
                );
              },
            ),
          )),
    );
  }
}
