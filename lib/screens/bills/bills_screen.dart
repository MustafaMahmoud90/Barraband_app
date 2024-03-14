import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color.dart';
import '../../constants/font_weight_helper.dart';
import '../../constants/size.dart';
import '../../constants/sub_title.dart';
import '../navbar/nav_bar.dart';

class BillsScrren extends StatelessWidget {
  const BillsScrren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 30,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xfffbdb4c),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                          onPressed: () =>
                              navigateAndFinish(context, const MyNavbarBottm()),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                          ))),
                  SizedBox(
                    width: 120.sp,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SubTitle(
                        text: 'الفواتير',
                        size: 30,
                        color: Colors.white,
                        weight: FontWeightHelper.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400.w,
                height: 350.h,
                decoration: BoxDecoration(
                  color: const Color(0xfffbdb4c).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SubTitle(
                            text: 'تفاصيل الفاتورة',
                            size: 25,
                            color: darkBlue,
                            weight: FontWeightHelper.bold),
                      ),
                    ),
                    Divider(
                      color: darkBlue,
                      thickness: 1.0,
                      height: 0.5.h,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SubTitle(
                              text: '٢٠٠ جنيه مصري',
                              size: 18,
                              color: darkBlue,
                              weight: FontWeightHelper.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SubTitle(
                              text: 'اشتراك شهري',
                              size: 18,
                              color: darkBlue,
                              weight: FontWeightHelper.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SubTitle(
                              text: 'نهاية الاشتراك',
                              size: 18,
                              color: darkBlue,
                              weight: FontWeightHelper.bold),
                          SubTitle(
                              text: 'بداية الاشتراك',
                              size: 18,
                              color: darkBlue,
                              weight: FontWeightHelper.bold),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SubTitle(
                              text: '٢/١١/٢٠٢٥',
                              size: 18,
                              color: darkBlue,
                              weight: FontWeightHelper.bold),
                          SubTitle(
                            text: '٢/١١/٢٠٢٢',
                              size: 18,
                              color: darkBlue,
                              weight: FontWeightHelper.bold),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SubTitle(
                            text: ' Visa Card تم الدفع بواسطة',
                            size: 25,
                            color: darkBlue,
                            weight: FontWeightHelper.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.dg, left: 270.sp),
              child: Image.asset(
                'assets/icons/prp3.png',
                width: 80.w,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
