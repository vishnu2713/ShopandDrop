import 'package:rxdart/rxdart.dart';
import 'package:shop_and_drop/APIS&REPOSITORIES/Repository/repository.dart';
import 'package:shop_and_drop/MODELS/AllProductsModel.dart';

class AllProductsBloc {
  final _repository = Repository();
  final _allProductsFetcher = PublishSubject<AllProductsModel>();

  Stream<AllProductsModel> get allProducts => _allProductsFetcher.stream;

  fetchAllProductsList() async {
    AllProductsModel categoryModel =
        await _repository.fetchAllProductsList();
    _allProductsFetcher.sink.add(categoryModel);
  }

  dispose() async {
    await _allProductsFetcher.drain();
    _allProductsFetcher.close();
  }
}

final allProductsBloc = AllProductsBloc();
