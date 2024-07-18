import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../config/Failures/failures.dart';
import '../../domain/repositories/product_repo.dart';
import '../data_sources/remote_ds.dart';
import '../models/ProductModel.dart';

@Injectable(as: ProductRepo)
class ProductRepoImp implements ProductRepo{
  RemoteDs remoteDs;

  ProductRepoImp(this.remoteDs);

  @override
  Future<Either<Failures, ProductModel>> getProduct()async {
    try{
     var data=await remoteDs.getProduct();
     return right(data);
    }catch(e){
      return left(RemoteFailure(e.toString()));
    }
  }

}