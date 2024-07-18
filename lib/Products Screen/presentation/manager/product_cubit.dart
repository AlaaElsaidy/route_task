import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import '../../../config/Failures/failures.dart';
import '../../data/models/ProductModel.dart';
import '../../domain/use_cases/getProduct_usecase.dart';

part 'product_state.dart';
@injectable
class ProductCubit extends Cubit<ProductState> {
  GetProductUseCase getProductUseCase;
  ProductCubit(this.getProductUseCase) : super(ProductInitial());
  void getProduct()async{
    var result =await getProductUseCase.call();
    result.fold((l) => emit(ProductFailure(l)), (r) => emit(ProductSuccess(r)));
  }
}
