import 'package:avoota/mvvm/models/scrollview.dart';
import 'package:avoota/mvvm/res/routes/routes_name.dart';
import 'package:avoota/mvvm/view/list_view.dart';
import 'package:avoota/mvvm/view/main_screen.dart';
import 'package:avoota/mvvm/view/on_board_screens.dart';
import 'package:get/get.dart';

import '../../view/home/home_view.dart';
import '../../view/login/login_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.onBoardView,
          page: () => const OnBoardScreens(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.loginView,
          page: () => const LoginView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.mainView,
          page: () => const MainScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.homeView,
          page: () => const HomeView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.listView,
          page: () => const ListView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.scrollView,
          page: () => const ScrollView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
