import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget gridViewProductText(BuildContext context, String name, var price) {
  var size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(left: 5),
    //color: Colors.yellow,
    width: size.width * 0.47,
    child: Column(
      children: <Widget>[
        Container(
          width: size.width * 0.45,
         //  color: Colors.pink,
          height: size.height * 0.05,
          child: Text(
            name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: size.height * 0.016,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
        ),
        Text(
          price + " QR",
          style: TextStyle(
              fontSize: size.height * 0.018,
              decoration: TextDecoration.none,
              color: Colors.blue),
        ),
      ],
    ),
  );
}
