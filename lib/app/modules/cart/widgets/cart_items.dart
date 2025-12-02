import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../controllers/cart_controller.dart';

class CartItems extends GetView<CartController> {
  const CartItems({super.key, required this.itemName, required this.count, required this.imgAddress, required this.price});
  final String itemName;
  final RxInt count;
  final String imgAddress;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: Card(
        color: AppColors.third.withAlpha(200),
        elevation: 0,
        shape: RoundedRectangleBorder(side: BorderSide(color: AppColors.secondary, width: 1.5), borderRadius: BorderRadiusGeometry.all(Radius.circular(12.r))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: SizedBox(
                height: 50.h,
                width: 130.h,
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(side: BorderSide(color: AppColors.primary, width: 2), borderRadius: BorderRadiusGeometry.circular(22.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.decrement(controller.items.firstWhere((element) => element.product.name == itemName));
                        },
                        icon: Icon(Icons.remove, color: AppColors.text, size: 26.sp),
                      ),
                      Obx(() => Text(count.value.toString(), style: TextStyle(color: AppColors.black, fontWeight: FontWeight.bold, fontSize: 20.sp))),
                      IconButton(
                        onPressed: () {
                          controller.increment(controller.items.firstWhere((element) => element.product.name == itemName));
                        },
                        icon: Icon(Icons.add, color: AppColors.text, size: 26.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(itemName, style: Theme.of(context).textTheme.bodyLarge),
                  Text('$price تومان', textDirection: TextDirection.rtl, style: TextStyle(letterSpacing: 0, color: AppColors.text.withAlpha(180), fontSize: 14.sp)),
                ],
              ),
            ),
            SizedBox(width: 10.w),

            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(height: 90.h, width: 90.w, child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12.r)), color: AppColors.third, elevation: 0)),
                Padding(padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w), child: Image.asset(imgAddress)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
