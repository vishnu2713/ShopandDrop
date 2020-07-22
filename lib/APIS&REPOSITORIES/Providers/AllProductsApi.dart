import 'dart:convert';

import 'package:http/http.dart';
import 'package:shop_and_drop/MODELS/AllProductsModel.dart';

class AllProductsApi {
  AllProductsModel list;

  Client client = Client();
  String favUrl =
      "https://shop.shopndrop.qa/wc-api/v3/products?consumer_key=ck_10f2d17d0a99a9584eb25443309cda048506f955&consumer_secret=cs_6470c1b829bc20bef6044a87cee146f873c40781";
  Future<AllProductsModel> fetchAllProductsList() async {
    try {
      final response = await client.get(favUrl);

      print(response);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final rest = data ;
        print("AllProducts...");
        //print(rest);

        list =  AllProductsModel.fromJson(data);

        return list;
      } else {
        throw Exception("Failed to load Deals");
      }
    } catch (e) {}
  }
}
//fetchAllProductsList  AllProductsModel