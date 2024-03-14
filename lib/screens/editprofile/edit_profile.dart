
import 'package:education_app/constants/font_weight_helper.dart';
import 'package:education_app/constants/size.dart';
import 'package:education_app/constants/sub_title.dart';
import 'package:education_app/screens/navbar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color.dart';
import '../authentication/widgets/app_text_form_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController emailControlle = TextEditingController();
  final formhey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              top: 160,
              left: 10,
              right: 10,
              child: Container(
                width: 500.w,
                height: 300.h,
               decoration: BoxDecoration(
                 color: uiColorwhite,
                 borderRadius: BorderRadius.circular(10)
               ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
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
                        text: 'تحديث البينات',
                        size: 22,
                        color: uiColorwhite,
                        weight: FontWeightHelper.medium),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 90.sp,right: 225.sp),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              color: const Color(0xfffbdb4c),
                              borderRadius: BorderRadius.circular(30),
                            ),
                    child: SizedBox(
                      width: 50.w,
                      height: 50.h,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: const Stack(
                            children: [
                              Image(
                                  image: NetworkImage(
                                      'https://img.freepik.com/premium-photo/memoji-happy-man-white-background-emoji_826801-6840.jpg?size=626&ext=jpg&uid=P52758974&ga=GA1.1.1930941175.1705394112&semt=sph')),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
                top: 180,
                left: 110,
                child: Icon(
                  Icons.add_a_photo,
                  color: darkBlue,
                )),
            Padding(
                padding: EdgeInsets.only(top: 200.sp),
                child: Form(
                  key: formhey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: AppTextFormField(
                          controller: emailControlle,
                          hintText: 'اسم المستخدم',
                          backgroundColor: const Color(0xfffbdb4c),
                        ),
                      ),
                     const SizedBox(
                      height: 0.0,
                     ),
                     Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: AppTextFormField(
                          controller: emailControlle,
                          hintText: 'البريد الاكتروني',
                          backgroundColor: const Color(0xfffbdb4c),
                        ),
                      ),
                        const SizedBox(
                      height: 0.0,
                     ),
                     Padding(
                       padding: const EdgeInsets.all(30.0),
                       child: AppTextFormField(
                            controller: emailControlle,
                            hintText: 'كلمة المرور',
                             backgroundColor: const Color(0xfffbdb4c),
                            isObscureText: isObscureText,
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isObscureText = !isObscureText;
                                  });
                                },
                                child: Icon(isObscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                          ),
                     ),
                     const SizedBox(height: 25,),
                     Container(
                      width: 250.w,
                      height: 50,
                     decoration: BoxDecoration(
                       color: const Color(0xfffbdb4c),
                       borderRadius: BorderRadius.circular(25),
                     ),
                     child: Align(
                      alignment: Alignment.center,
                      child: SubTitle(text: 'حفط', size: 22, color: darkBlue, weight: FontWeightHelper.medium)),
                     ),
                    ],
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
