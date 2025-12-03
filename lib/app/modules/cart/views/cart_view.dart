import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../controllers/cart_controller.dart';
import '../widgets/cart_items.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(
              'سبد خرید',
              style: TextStyle(
                color: AppColors.text,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                fontFamily: 'vazirmatn',
              ),
            ),

            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Obx(() {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 40.h,
                    ),
                    child:
                        controller.items.isNotEmpty
                            ? ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.items.length,
                              itemBuilder: (context, index) {
                                final item = controller.items[index];
                                return CartItems(
                                  count: item.quantity,
                                  imgAddress:
                                      'assets/images/products/espresso.png',
                                  itemName: item.product.name,
                                  price: item.product.price.toString(),
                                );
                              },
                            )
                            : Card(
                              elevation: 0,
                              color: AppColors.third.withAlpha(120),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 2.w,
                                  color: AppColors.third,
                                ),
                                borderRadius: BorderRadiusGeometry.all(
                                  Radius.circular(10.r),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                  vertical: 10.h,
                                ),
                                child: Text(
                                  'سبد خرید خالی است!',
                                  textDirection: TextDirection.rtl,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            ),
                  );
                }),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50.h,
                        width: 120.w,
                        child: InkWell(
                          onTap: () {},
                          child: Card(
                            elevation: 0,
                            color: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(22.r),
                            ),
                            child: Center(
                              child: Text(
                                'اعمال کردن',
                                style: TextStyle(color: AppColors.buttonText),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250.w,
                        child: TextField(
                          cursorColor: AppColors.text,
                          style: Theme.of(context).textTheme.bodyMedium,
                          textDirection: TextDirection.ltr,
                          decoration: InputDecoration(
                            hintText: 'کد تخفیف',
                            hintTextDirection: TextDirection.rtl,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.w,
                    right: 22.w,
                    top: 30.h,
                    bottom: 20.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          controller.totalPrice.string,
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      Text(
                        'سبد خرید',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.w,
                    right: 22.w,
                    bottom: 20.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10%',
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        'تخفیف',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.w,
                    right: 22.w,
                    bottom: 35.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          controller.calculateTotalWithDiscount().toString(),
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      Text(
                        'مجموع',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: 40.w,
                  ),
                  child: SizedBox(
                    width: Get.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('تسویه حساب'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
