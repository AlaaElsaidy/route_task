import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/Products%20Screen/data/models/ProductModel.dart';

import '../../../core/utilies/app_colors.dart';

class CartItem extends StatelessWidget {
  final int index;
  final ProductModel? productModel;
  const CartItem(
      {required this.index, required this.productModel, super.key});

  @override
  Widget build(BuildContext context) {
    var product = productModel?.products?[index];
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(width: 2.w, color: Colors.blueGrey)),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              // alignment: Alignment.centerRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: CachedNetworkImage(
                      imageUrl: product?.thumbnail ?? "",
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 180.h,
                      errorWidget: (context, url, error) =>
                      const Icon(Icons.error_outline, size: 40)),
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 10.h, horizontal: 7.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      // margin: const EdgeInsets.only(left: 20),
                      padding: EdgeInsets.all(2.h.w),

                      margin: EdgeInsets.only(left: 6.w),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                        // border:
                        //     Border.all(width: 2.w, color: Colors.blueGrey)
                      ),
                      child: Icon(
                        Icons.favorite_outline,
                        color: AppColors.blueColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Text(
                      product?.brand ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Text(
                      productModel?.products?[index].description ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      SizedBox(width: 8.w),
                      Text("Egp ${product?.price.toString() ?? ""}"),
                      SizedBox(width: 16.w),
                      const Text("EGP 1200"),
                    ],
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 8.w, right: 8.w),
                    child: Row(
                      children: [
                        const Text("Review"),
                        SizedBox(width: 4.w),
                        Text(product?.rating.toString() ?? ""),
                        SizedBox(width: 4.w),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const Spacer(),
                        Container(
                            padding: EdgeInsets.all(5.w.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.r),
                              color: AppColors.blueColor,
                            ),
                            child: const Icon(Icons.add, color: Colors.white))
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}