import 'package:get/get.dart';

/*
  This class defines all the route names and their navigations.
  We are using named routing in this project, so that we can identify routes by their name & can navigate back & forth easily.
 */

// defining the route names here
class Routes {
  Routes._();

  static const String homeScreen = "/HomeScreen";
  static const String loginScreen = "/LoginScreen";
}

// It defines the route navigations and binding initialisation.
List<GetPage> AppPages() => [
      // GetPage(
      //   name: Routes.homeScreen,
      //   page: () => const HomeScreen(),
      //   binding: HomeScreenBinding(),
      // ),
      // GetPage(
      //   name: Routes.loginScreen,
      //   page: () => const LoginScreen(),
      //   binding: LoginScreenBinding(),
      // )
    ];
