part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {
}
final class ProductSuccess extends ProductState {
 ProductModel productModel;

 ProductSuccess(this.productModel);
}
final class ProductFailure extends ProductState {
 Failures failures;

  ProductFailure(this.failures);
}

