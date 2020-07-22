import 'package:flutter/material.dart';

class HomeScreenCatogeris extends StatefulWidget {
  @override
  _HomeScreenCatogerisState createState() => _HomeScreenCatogerisState();
}

class _HomeScreenCatogerisState extends State<HomeScreenCatogeris> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      color: Colors.black12,
      child: catogeries(
          "images/electronicdevice.png",
          "Electronic\nDevices",
          null,
          "images/electronics.png",
          "Electronic\nAccessories",
          null,
          "images/Sfapp.png",
          "Software Applications",
          null),
    );
  }

  Widget catogeries(image1, name, Color color1, image2, name2, Color color2,
      image3, name3, Color color3) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Spacer(),
        catogeryCard(image1, name, color1),
        Spacer(),
        catogeryCard(image2, name2, color2),
        Spacer(),
        catogeryCard(image3, name3, color3),
      ],
    );
  }

  catogeryCard(image, name, Color color) {
    var size = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: size.height * 0.12,
        width: size.width * 0.30,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 5),
              height: size.height * 0.05,
              width: size.width,
              // color: Colors.black12,
              child:
                  Image.asset(image, height: size.height * 0.05, color: color),
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
