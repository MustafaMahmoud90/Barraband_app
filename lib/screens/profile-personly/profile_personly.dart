import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color.dart';
import '../../constants/font_weight_helper.dart';
import '../../constants/size.dart';
import '../../constants/sub_title.dart';
import '../navbar/nav_bar.dart';

class ProfilePersonly extends StatelessWidget {
  const ProfilePersonly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 10.h,
            // ),

            
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
                    width: 100.sp,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SubTitle(
                        text: 'الملف الشخصي',
                        size: 25,
                        color: darkBlue,
                        weight: FontWeightHelper.bold),
                  ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
                      alignment: Alignment.centerRight,
                      child: SubTitle(
                          text: 'مبتدئ',
                          size: 18,
                          color: Colors.white,
                          weight: FontWeightHelper.bold),
                    ),
          ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  Container(
                width: double.infinity,
                height: 8.5.h,
                decoration: BoxDecoration(
                  color: const Color(0xfffbdb4c),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                left: 300.sp,
                child: Container(
                  width: 60.w,
                  height: 8.5.h,
                  decoration: BoxDecoration(
                    color: kPrimaryLight,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.white,
                thickness: 1.0,
                height: 0.5,
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SubTitle(
                      text: '٢/١١/٢٠٢٥',
                      size: 15,
                      color: Colors.white,
                      weight: FontWeightHelper.bold),
                      SubTitle(
                          text: 'سينتهي اشتراكك في',
                          size: 20,
                          color: darkBlue,
                          weight: FontWeightHelper.bold),
                ],
              ),
            ),
            SizedBox(height: 0.1.h,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                      width: 35.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: kPrimaryLight,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.add,color: Colors.white,size: 30,),
                      ),
                    ),
                      SubTitle(
                          text: 'اضف مهامك',
                          size: 20,
                          color: darkBlue,
                          weight: FontWeightHelper.bold),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 150.h,
               decoration: BoxDecoration(
                 color: const Color(0xfffbdb4c).withOpacity(0.8),
                 borderRadius: BorderRadius.circular(10),
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