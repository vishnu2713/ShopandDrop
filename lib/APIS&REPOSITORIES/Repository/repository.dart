import 'package:shop_and_drop/APIS&REPOSITORIES/Providers/AllProductsApi.dart';
import 'package:shop_and_drop/MODELS/AllProductsModel.dart';

class Repository{
  final allProductsApi = AllProductsApi();

    Future<AllProductsModel> fetchAllProductsList() => allProductsApi.fetchAllProductsList();
}
