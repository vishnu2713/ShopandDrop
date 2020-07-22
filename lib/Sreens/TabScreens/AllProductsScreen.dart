import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:shop_and_drop/BLOC/AllProductsBloc.dart';
import 'package:shop_and_drop/MODELS/AllProductsModel.dart';
import 'package:shop_and_drop/WIDGETS/GridProductText.dart';

import '../ProductScreen.dart';

class AllProducts extends StatefulWidget {
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allProductsBloc.fetchAllProductsList();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white70,
      //height: size.height,
      width: size.width,
      child: StreamBuilder<AllProductsModel>(
          stream: allProductsBloc.allProducts,
          builder: (context, AsyncSnapshot<AllProductsModel> snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data.products.length);
              return GridView.builder(
                      physics: NeverScrollableScrollPhysics(),                 
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: snapshot.data.products.length,
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.9),
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductScreen(
                                            images: snapshot.data
                                                .products[index].images,
                                          )),
                                );
                              },
                              child: Card(
                                //color: Colors.blue,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                     // color: Colors.blue,
                                      height: size.height * 0.1,
                                      // padding: EdgeInsets.only(bottom:25),
                                      child: Container(
                                              // margin: EdgeInsets.only(
                                              //     top: size.height * 0.005),
                                              decoration: BoxDecoration(
                                               // color: Colors.red,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                  snapshot
                                                      .data
                                                      .products[index]
                                                      .images[0]
                                                      .src,
                                                )),
                                                borderRadius:
                                                    BorderRadius.all(
                                                        Radius.circular(
                                                            8.0)),
                                              ),
                                            ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height: size.height * 0.12,
                                      child: gridViewProductText(
                                          context,
                                          snapshot
                                              .data.products[index].title,
                                          snapshot
                                              .data.products[index].price),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: size.height * 0.02,
                              left: size.width * 0.02,
                              child: ButtonTheme(
                                buttonColor: Colors.white,
                                minWidth: 10.0,
                                height: 20.0,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        );
                      });
            } else {
              return Center(
                child: JumpingText(
                  'Loading...',
                  style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                ),
              );
            }
          }),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
