// ignore_for_file: unused_local_variable, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import '../../constants/color.dart';
import '../../constants/icons.dart';
import '../../constants/size.dart';
import '../../layout/navbar_cubit/cubit/navbar_cubit.dart';

class MyNavbarBottm extends StatelessWidget {
  const MyNavbarBottm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavbarCubit, NavbarState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NavbarCubit.get(context);
        return Scaffold(
          extendBody: true,
          // backgroundColor: Colors.transparent,
          body: cubit.bottmScreens[cubit.currentIndex],
          bottomNavigationBar: MoltenBottomNavigationBar(
            barColor: kPrimaryLight,
            domeCircleColor: kPrimaryColor,
            domeCircleSize: 25,
            selectedIndex: cubit.currentIndex,
            onTabChange: (index) {
              cubit.changeBottom(index);
            },
            tabs: [
              MoltenTab(
                icon: Image.asset(
                  icFeaturedOutlined,
                  height: kBottomNavigationBarItemSize,
                 color: Colors.white,
                ),
              ),
               MoltenTab(
                icon: Image.asset(
                  icLearningOutlined,
                  height: kBottomNavigationBarItemSize,
                     color: Colors.white,
                ),
              ),
               MoltenTab(
                icon: Image.asset(
                  icWishlistOutlined,
                  height: kBottomNavigationBarItemSize,
                     color: Colors.white,
                ),
              ),
               MoltenTab(
                icon: Image.asset(
                 'assets/icons/profile.png',
                  height: kBottomNavigationBarItemSize,
                    color: Colors.white,
                ),
              ),
            ],
          ),

          //    BottomNavigationBar(
          // type: BottomNavigationBarType.fixed,
          // selectedItemColor: kPrimaryColor,
          // backgroundColor: Colors.white,
          // elevation: 0,
          // items: [
          //   BottomNavigationBarItem(
          //     activeIcon: Image.asset(
          //       icFeatured,
          //       color: kPrimaryColor,
          //       height: kBottomNavigationBarItemSize,
          //     ),
          //     icon: Image.asset(
          //       icFeaturedOutlined,
          //       height: kBottomNavigationBarItemSize,
          //     ),
          //     label: "Featured",
          //   ),
          //   BottomNavigationBarItem(
          //     activeIcon: Image.asset(
          //       icLearningOutlined,
          //       color: kPrimaryColor,
          //       height: kBottomNavigationBarItemSize,
          //     ),
          //     icon: Image.asset(
          //       icLearningOutlined,
          //       height: kBottomNavigationBarItemSize,
          //     ),
          //     label: "My Learning",
          //   ),
          //   BottomNavigationBarItem(
          //     activeIcon: Image.asset(
          //       icWishlist,
          //        color: kPrimaryColor,
          //       height: kBottomNavigationBarItemSize,
          //     ),
          //     icon: Image.asset(
          //       icWishlistOutlined,
          //       height: kBottomNavigationBarItemSize,
          //     ),
          //     label: "Wishlist",
          //   ),
          //   BottomNavigationBarItem(
          //     activeIcon: Image.asset(
          //       icSetting,
          //       color: kPrimaryColor,
          //       height: kBottomNavigationBarItemSize,
          //     ),
          //     icon: Image.asset(
          //       icSettingOutlined,
          //       height: kBottomNavigationBarItemSize,
          //     ),
          //     label: "Account",
          //   ),
          // ],
          // currentIndex:cubit.currentIndex,
          // onTap: (index) {
          // cubit.changeBottom(index);
          // }),
        );
      },
    );
  }
}
