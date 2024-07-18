import 'package:dartz/dartz.dart';

import '../../../config/Failures/failures.dart';
import '../../data/models/ProductModel.dart';


abstract class ProductRepo{
Future<Either<Failures,ProductModel>> getProduct();
}