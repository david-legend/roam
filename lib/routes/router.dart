import 'package:auto_route/auto_route_annotations.dart';
import 'package:roam/presentation/screens/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashScreen, initial: true),
    //Profile
//    MaterialRoute(page: Profile1Screen),
  ],
)
class $AppRouter {}
