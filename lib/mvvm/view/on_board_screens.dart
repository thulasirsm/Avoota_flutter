import 'package:flutter/material.dart';
import 'package:avoota/mvvm/res/routes/routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../res/routes/routes_name.dart';

class OnBoardScreens extends StatelessWidget {
  const OnBoardScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
              titleWidget: const Text(
                "Best travel destinations in the world",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              body: "The onboarding screen appears after the loading of the splash screen and only at the first interaction of the user with the app. Mainly Onboarding Screen consists of more than two layouts that slide horizontally. ",
              image: Image.asset(
                "assets/onbordscreen1.png", height: 300, width: 375,)
          ),
          PageViewModel(
              titleWidget: const Text(
                "Meet the needs of the holidays",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              body: "The onboarding screen appears after the loading of the splash screen and only at the first interaction of the user with the app. Mainly Onboarding Screen consists of more than two layouts that slide horizontally. ",
              image: Image.asset(
                "assets/onbordscreen2.png", height: 300, width: 375,)
          ),
          PageViewModel(
              titleWidget: const Text(
                "Go on holiday with a smile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              body: "The onboarding screen appears after the loading of the splash screen and only at the first interaction of the user with the app. Mainly Onboarding Screen consists of more than two layouts that slide horizontally. ",
              image: Image.asset(
                "assets/onbordscreen3.png", height: 300, width: 375,)
          ),
          PageViewModel(
              titleWidget: const Text(
                "We are here to make your holiday easier",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              body: "The onboarding screen appears after the loading of the splash screen and only at the first interaction of the user with the app. Mainly Onboarding Screen consists of more than two layouts that slide horizontally. ",
              image: Image.asset(
                "assets/onbordscreen4.png", height: 300, width: 375,)
          )
        ],
        onDone: () {
          Get.offNamed(RouteName.loginView);
          box.write("isOnBoard", true);
        },
        onSkip: () {
          Get.offNamed(RouteName.loginView);
          box.write("isOnBoard", true);
        },
        showSkipButton: true,
        skip: const Text("Skip", style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurpleAccent),),
        next: const Icon(Icons.arrow_forward, color: Colors.deepPurpleAccent,),
        done: const Text("Done", style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurpleAccent),),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize:const Size(20.0,10.0),
          color: Colors.black,
          activeColor: Colors.deepPurpleAccent,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
          )
        ),
      ),
    );
  }
}
