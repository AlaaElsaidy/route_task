import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/Products%20Screen/presentation/widgets/cart_item.dart';
import 'package:task/config.dart';
import '../manager/product_cubit.dart';
import '../widgets/search_part.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensure ScreenUtil is initialized
    ScreenUtil.init(
      context,
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
    );

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.png"),
      ),
      body: BlocProvider(
        create: (context) => getIt<ProductCubit>()..getProduct(),
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductSuccess) {
              return Padding(
                padding:  EdgeInsets.all(10.0.w.h),
                child: Column(
                  children: [
                    SearchPart(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: state.productModel?.products?.length ,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: (192 / 237),
                          crossAxisCount: 2,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 16.w,
                        ),
                        itemBuilder: (context, index) {
                          return CartItem(productModel: state.productModel, index: index);
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else if (state is ProductFailure) {
              return Center(child: Text(state.failures.message));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
