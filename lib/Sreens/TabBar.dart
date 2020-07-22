import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shop_and_drop/Sreens/TabScreens/AllProductsScreen.dart';
import 'package:shop_and_drop/WIDGETS/CatogerisInHomeScreen.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width,
      height: size.height,
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: <Widget>[
            //HomeScreenCarousel(),
          //  HomeScreenCatogeris(),
            TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: new BubbleTabIndicator(
                indicatorHeight: size.height * 0.05,
                indicatorColor: Colors.blueAccent,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ),
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  text: "All ",
                ),
                Tab(
                  text: "Newest ",
                ),
                Tab(
                  text: "Featured",
                ),
                Tab(
                  text: "Cheapest",
                ),
              ],
            ),
            
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                   AllProducts(),
          //             Container(
          //     color:Colors.red,
          //     height: size.height*2,
          //    child:  AllProducts(),
          //  ),
                  AllProducts(),
                  AllProducts(),
                  AllProducts(),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
