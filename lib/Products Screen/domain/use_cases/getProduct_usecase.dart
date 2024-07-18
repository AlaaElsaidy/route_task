import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../config/Failures/failures.dart';
import '../../data/models/ProductModel.dart';
import '../repositories/product_repo.dart';

@injectable
class GetProductUseCase{
  ProductRepo productRepo;

  GetProductUseCase(this.productRepo);
  Future<Either<Failures,ProductModel>> call()=>productRepo.getProduct();
}