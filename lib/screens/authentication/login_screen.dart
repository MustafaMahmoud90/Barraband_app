// ignore_for_file: avoid_unnecessary_containers

import 'package:education_app/constants/font_weight_helper.dart';
import 'package:education_app/constants/size.dart';
import 'package:education_app/constants/sub_title.dart';
import 'package:education_app/screens/authentication/signup_scrren.dart';
import 'package:education_app/screens/authentication/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color.dart';
import '../navbar/nav_bar.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController emailControlle = TextEditingController();
  final TextEditingController passwordControlle = TextEditingController();

  final formhey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        // width: double.infinity.w,
        // height: double.infinity.h,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                'assets/icons/ui2.png',
                fit: BoxFit.cover,
                height: 920.h,
              ),
                Positioned(
                  top: 450.sp,
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
                            onTap: (){
                              navigateAndFinish(context, const MyNavbarBottm());
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: SubTitle(text: 'دخول', size: 30, color: Colors.white, weight: FontWeightHelper.medium),
                            ),
                          ),
                        ),
                ),
                Positioned(
                   top: 550.sp,
                  left: 100.sp,
                  child: SubTitle(text:  '-- تسجيل الدخول عن طريق  --', size: 20, color: Colors.black, weight: FontWeightHelper.medium)
                ),
                   Positioned(
                    top: 590.sp,
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
                        controller: emailControlle,
                        hintText: 'البريد الاكتروني',
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      AppTextFormField(
                        controller: passwordControlle,
                        hintText: 'كلمة الامرور',
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
                          SubTitle(text:  'ليس\ لديك حساب?', size: 18, color: darkBlue, weight: FontWeightHelper.bold),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              navigateAndFinish(context, const SignUP());
                            },
                            child: SubTitle(text:  'اشتراك', size: 18, color: kPrimaryColor, weight: FontWeightHelper.bold)
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
        ),
      ),
    );
  }
}


// Scaffold(
//       body: SingleChildScrollView(
//         child: SafeArea(
//             child: Container(
//           width: double.infinity,
//           padding: const EdgeInsets.all(15.0),
//           child: Form(
//             key: formhey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     'Welcome Back',
//                     style: TextStyles.font32BlueBold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50.h,
//                 ),
//                 Text(
//                   'Login to your Account',
//                   style: TextStyles.font13DarkBlueRegular,
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 AppTextFormField(
//                   controller: emailControlle,
//                   hintText: 'Email',
//                 ),
//                 SizedBox(
//                   height: 25.h,
//                 ),
//                 AppTextFormField(
//                   controller: passwordControlle,
//                   hintText: 'Password',
//                   isObscureText: isObscureText,
//                   suffixIcon: GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           isObscureText = !isObscureText;
//                         });
//                       },
//                       child: Icon(isObscureText
//                           ? Icons.visibility_off
//                           : Icons.visibility)),
//                 ),
//                 SizedBox(
//                   height: 24.h,
//                 ),
//                 Align(
//                     alignment: AlignmentDirectional.centerEnd,
//                     child: Text(
//                       'Forgot Password?',
//                       style: TextStyles.font13DarkBlueRegular,
//                     )),
//                 SizedBox(
//                   height: 40.h,
//                 ),
//                 AppTextButton(
//                   buttonText: 'Login',
//                   textStyle: TextStyles.font16WhiteSemiBold,
//                   onPressed: () {},
//                 ),
//                 SizedBox(
//                   height: 50.h,
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     '- Or sign in with -',
//                     style: TextStyles.font13DarkBlueRegular,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     AppButton(
//                       google: 'assets/icons/google.png',
//                       onPressed: () {},
//                     ),
//                     SizedBox(
//                       width: 50.w,
//                     ),
//                     AppButton(
//                       google: 'assets/icons/facebook.png',
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         )),
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Container(
//           height: 50.h,
//           color: Colors.white,
//           alignment: Alignment.center,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//                Text(
//                       'Don\t have an account?',
//                       style: TextStyles.font13DarkBlueRegular,
//                     ),
//                     SizedBox(width: 10.w,),
//                     GestureDetector(
//                       onTap: (){
//                         navigateAndFinish(context, const SignUP());
//                       },
//                       child:  Text(
//                       'Sign UP',
//                       style: TextStyles.font13DarkBlueRegular,
//                     ),
//                     )
//             ],
//           ),
//         ),
//       ),
//     );