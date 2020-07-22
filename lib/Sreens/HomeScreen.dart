import 'package:flutter/material.dart';
import 'package:shop_and_drop/WIDGETS/CatogerisInHomeScreen.dart';
import 'package:shop_and_drop/WIDGETS/HomeScreen_Carosel.dart';

import 'TabBar.dart';
import 'TabScreens/AllProductsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        //height: size.height,
        //margin: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: ListView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            HomeScreenCarousel(),
            HomeScreenCatogeris(),
            TabBarScreen()
            //   Container(
            //     color:Colors.red,
            //     height: size.height*2,
            //     child:  TabBarScreen(),
            //  ),
          ],
        ),
      ),
    );
  }
}
