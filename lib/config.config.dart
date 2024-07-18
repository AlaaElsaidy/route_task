// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'config/Network/api/api_functions.dart' as _i3;
import 'Products%20Screen/data/data_sources/remote_ds.dart' as _i4;
import 'Products%20Screen/data/data_sources/remoteDs_Imp.dart' as _i5;
import 'Products%20Screen/data/repositories/product_repo_Imp.dart' as _i7;
import 'Products%20Screen/domain/repositories/product_repo.dart' as _i6;
import 'Products%20Screen/domain/use_cases/getProduct_usecase.dart' as _i8;
import 'Products%20Screen/presentation/manager/product_cubit.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.RemoteDs>(() => _i5.RemoteDSImp(gh<_i3.ApiManager>()));
    gh.factory<_i6.ProductRepo>(() => _i7.ProductRepoImp(gh<_i4.RemoteDs>()));
    gh.factory<_i8.GetProductUseCase>(
        () => _i8.GetProductUseCase(gh<_i6.ProductRepo>()));
    gh.factory<_i9.ProductCubit>(
        () => _i9.ProductCubit(gh<_i8.GetProductUseCase>()));
    return this;
  }
}
