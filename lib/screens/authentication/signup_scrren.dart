// ignore_for_file: avoid_unnecessary_containers

import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/font_weight_helper.dart';
import 'package:education_app/constants/size.dart';
import 'package:education_app/constants/sub_title.dart';
import 'package:education_app/screens/authentication/login_screen.dart';
import 'package:education_app/screens/authentication/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final TextEditingController nameControlle = TextEditingController();
  final TextEditingController emailControlle = TextEditingController();
  final TextEditingController passwordControlle = TextEditingController();

  final formhey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
            children: [
              Image.asset(
                'assets/icons/ui2.png',
                fit: BoxFit.cover,
                height: 920.h,
              ),
                Positioned(
                  top: 520.sp,
                  left: 200.sp,
                  child: Container(
                          width: 200.w,
                          height: 55.h,
                          decoration: const BoxDecoration(
                            color: kPrimaryLight,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            )
                          ),
                          child: GestureDetector(
                            onTap: (){},
                            child: Align(
                              alignment: Alignment.center,
                              child: SubTitle(text:  'تسجيل', size: 30, color: uiColorwhite, weight: FontWeightHelper.medium),
                            ),
                          ),
                        ),
                ),
                Positioned(
                   top: 600.sp,
                  left: 100.sp,
                 child: SubTitle(text:  '-- تسجيل الدخول عن طريق  --', size: 20, color: Colors.black, weight: FontWeightHelper.medium)
                ),
                   Positioned(
                    top: 640.sp,
                  left: 150.sp,
                     child: Row(
                      children: [
                        Image.asset('assets/icons/facebookpng.png',width: 25,),
                        SizedBox(width: 10.h,),
                          Image.asset('assets/icons/google.png',width: 25,),
                             SizedBox(width: 10.h,),
                             Image.asset('assets/icons/apple.png',width: 25,),
                      ],
                     ),
                   ),
              Positioned(
                top: 260.sp,
                right: 50.sp,
                left: 50.sp,
                child: Container(
                  child: Column(
                    children: [
                      AppTextFormField(
                        controller: nameControlle,
                        hintText: 'اسم المستخدم',
                      ),
                       SizedBox(
                        height: 25.h,
                      ),
                      AppTextFormField(
                        controller: emailControlle,
                        hintText: 'البريد الاكتروني',
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      AppTextFormField(
                        controller: passwordControlle,
                        hintText: 'كلمة المرور',
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
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             SubTitle(text:  'هل\ لديك حساب?', size: 18, color: darkBlue, weight: FontWeightHelper.bold),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              navigateAndFinish(context, const LogIn());
                            },
                            child: SubTitle(text:  'دخول', size: 18, color: kPrimaryColor, weight: FontWeightHelper.medium),
                          )
                        ],
                      ),
                       SizedBox(
                        height: 25.h,
                      ),
                    
                    ],
                  ),
                ),
              ),
            ],
          ),
    ));
  }
}
