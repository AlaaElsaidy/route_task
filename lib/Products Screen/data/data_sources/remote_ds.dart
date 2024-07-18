
import 'package:task/Products%20Screen/data/models/ProductModel.dart';

abstract class RemoteDs{
  Future<ProductModel>getProduct();
}