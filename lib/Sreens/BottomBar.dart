import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'TabBar.dart';
import 'TabScreens/AllProductsScreen.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<Widget> _screens = [
      HomeScreen(), //1
      //HomeScreen(),
      TabBarScreen(), //2
      // Center(child: Text("Subscriptions",style: TextStyle(color: Colors.black),)),
      // AllProducts(), //3

      AllProducts(), //4

      AllProducts() //5
    ];

    return Scaffold(
      key: scaffoldKey,
      //  endDrawer: Drawer(
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.all(18.0),
      //       child: ListView(
      //         children: <Widget>[
      //           ListTile(
      //             title: Text('Item1'),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      //   ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.scale(
        scale: 1,
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => AllProducts()),
              // );
            },
            child: Icon(
              Icons.chat_bubble_outline,
              color: Colors.blue,
              size: size.height * 0.050,
            ),
            elevation: 5.0),
      ),
      body: _screens[_currentIndex],

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.black12,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.white, //Color(0xff84020e),
            unselectedItemColor: Colors.white60,
            onTap: _onTapped,
            items: [
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.blue,
                    size: size.height * 0.040,
                  ),
                  title: Text(
                    "Home",
                    // style: TextStyle(color: Color(0xff84020e)),
                  ),
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: size.height * 0.040,
                  )),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.menu,
                  color: Colors.blue,
                  size: size.height * 0.040,
                ),
                title: Text("menu"),
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey,
                  size: size.height * 0.040,
                ),
              ),
              // BottomNavigationBarItem(
              //   title: Text(
              //     "",
              //     style: TextStyle(fontSize: 1),
              //   ),
              //   icon: Icon(
              //     Icons.chat_bubble_outline,
              //     color: Colors.blue,
              //     size: size.height * 0.050,
              //   ),
              // ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                  size: size.height * 0.040,
                ),
                title: Text("cart"),
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                  size: size.height * 0.040,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                  size: size.height * 0.040,
                ),
                title: Text(
                  "person",
                ),
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                  size: size.height * 0.040,
                ),
              ),
            ]),
      ),
    );
  }
}
