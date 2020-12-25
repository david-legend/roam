import 'package:auto_route/auto_route_annotations.dart';
import 'package:roam/presentation/screens/login_screen.dart';
import 'package:roam/presentation/screens/onBoarding_screen.dart';
import 'package:roam/presentation/screens/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashScreen, initial: true),
    //OnBoardingScreen
    MaterialRoute(page: OnBoardingScreen),
    MaterialRoute(page: LoginScreen),
  ],
)
class $AppRouter {}
