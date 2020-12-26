import 'package:auto_route/auto_route_annotations.dart';
import 'package:roam/presentation/screens/login_screen.dart';
import 'package:roam/presentation/screens/onBoarding_screen.dart';
import 'package:roam/presentation/screens/select_interest_screen.dart';
import 'package:roam/presentation/screens/signup_screen.dart';
import 'package:roam/presentation/screens/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashScreen, initial: true),

    //OnBoarding and AuthenticationScreens
    MaterialRoute(page: OnBoardingScreen),
    MaterialRoute(page: LoginScreen),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: SelectInterestScreen),
  ],
)
class $AppRouter {}
