// ignore_for_file: camel_case_types

import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/size.dart';
import 'package:education_app/constants/sub_title.dart';
import 'package:education_app/screens/editprofile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../constants/font_weight_helper.dart';
import '../../bills/bills_screen.dart';
import '../../profile-personly/profile_personly.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 100.w,
                    height: 100.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                          image: NetworkImage(
                              'https://img.freepik.com/premium-photo/memoji-happy-man-white-background-emoji_826801-6840.jpg?size=626&ext=jpg&uid=P52758974&ga=GA1.1.1930941175.1705394112&semt=sph')),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Mustafa Mahmoud',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'mostafa.zero.410m@gmail.com',
                      style: TextStyle(
                          color: Color(0xfffbdb4c),
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  GestureDetector(
                    onTap: () =>
                        navigateAndFinish(context, const EditProfile()),
                    child: Container(
                      width: 200.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: const Color(0xfffbdb4c),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: SubTitle(
                              text: 'تحديث البيانات',
                              size: 25,
                              color: Colors.black,
                              weight: FontWeightHelper.medium)),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: const Color(0xfffbdb4c),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: customProfile(
                      title: 'الاعددات',
                      icon: LineAwesomeIcons.cog,
                      textColor: Colors.black,
                      onPress: () {},
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: const Color(0xfffbdb4c),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: customProfile(
                      title: 'الملف الشخصي',
                      icon: Icons.person_outline,
                      textColor: Colors.black,
                      onPress: () {
                        navigateAndFinish(context, const ProfilePersonly());
                      },
                    ),
                  ),

                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: const Color(0xfffbdb4c),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: customProfile(
                      title: 'الفواتير',
                      icon: LineAwesomeIcons.money_bill,
                      textColor: Colors.black,
                      onPress: () {
                        navigateAndFinish(context, const BillsScrren());
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: const Color(0xfffbdb4c),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: customProfile(
                      title: 'تسجيل الخروج',
                      icon: Icons.logout,
                      textColor: Colors.black,
                      onPress: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60.dg, left: 270.sp),
                    child: Image.asset(
                      'assets/icons/prp3.png',
                      width: 80.w,
                    ),
                  ),
                  //   Padding(
                  //    padding:  EdgeInsets.only(top: 25.dg,right: 270.sp),
                  //    child: Image.asset('assets/icons/prp3.png',width: 80.w,),
                  //  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class customProfile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;
  const customProfile(
      {required this.title,
      required this.icon,
      required this.onPress,
      this.textColor,
      this.endIcon = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 30.w,
        height: 30.h,
        child: Icon(
          icon,
          color: textColor,
          size: 30,
        ),
      ),
      title: SubTitle(
          text: title,
          size: 25,
          color: Colors.black,
          weight: FontWeightHelper.medium),
      trailing: endIcon
          ? SizedBox(
              width: 30.w,
              height: 30.h,
              child: GestureDetector(
                  onTap: onPress, child: const Icon(Icons.arrow_forward_ios)),
            )
          : null,
    );
  }
}


//const Icon(LineAwesomeIcons.cog),
//  const Icon(LineAwesomeIcons.angle_right)),