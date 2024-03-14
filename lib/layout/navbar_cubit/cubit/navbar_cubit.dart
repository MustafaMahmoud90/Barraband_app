import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../screens/home/base_screen.dart';
import '../../../screens/navbar/mylearning/my_learning.dart';
import '../../../screens/navbar/settings/settings_scrren.dart';
import '../../../screens/navbar/wishlist/wishlist_screen.dart';

part 'navbar_state.dart';

class NavbarCubit extends Cubit<NavbarState> {
  NavbarCubit() : super(NavbarInitial());

  static NavbarCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottmScreens = [
    const BaseScreen(),
     const MyLearning(),
    const WishlistScreen(),
     const Profile(),
  ];
  void changeBottom(int index) {
    currentIndex = index;
    emit(NavbarBottm());
  }
}
