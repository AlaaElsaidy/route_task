import 'package:injectable/injectable.dart';
import 'package:task/Products%20Screen/data/data_sources/remote_ds.dart';
import 'package:task/Products%20Screen/data/models/ProductModel.dart';
import 'package:task/config/Network/api/api_endPoints.dart';
import 'package:task/config/Network/api/api_functions.dart';
@Injectable(as: RemoteDs)
class RemoteDSImp extends RemoteDs{
  ApiManager apiManager;

  RemoteDSImp(this.apiManager);

  @override
  Future<ProductModel> getProduct()async {
    var response = await apiManager.getData(Endpoints.product);
    ProductModel productModel= ProductModel.fromJson(response.extra);
    return productModel;
  }

}