
import 'package:auto_route/auto_route.dart';
import 'package:roam/presentation/screens/add_collaborators.dart';
import 'package:roam/presentation/screens/discover_screen.dart';
import 'package:roam/presentation/screens/follow_screen.dart';
import 'package:roam/presentation/screens/home_screen.dart';
import 'package:roam/presentation/screens/login_screen.dart';
import 'package:roam/presentation/screens/onBoarding_screen.dart';
import 'package:roam/presentation/screens/place_screen.dart';
import 'package:roam/presentation/screens/plan_trip_screen.dart';
import 'package:roam/presentation/screens/profile_screen.dart';
import 'package:roam/presentation/screens/root_screen.dart';
import 'package:roam/presentation/screens/saved_places_screen.dart';
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
    MaterialRoute(page: FollowScreen),

    //Inside App
    MaterialRoute(page: RootScreen),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: DiscoverScreen),
    MaterialRoute(page: SavedPlacesScreen),
    MaterialRoute(page: ProfileScreen),
    MaterialRoute(page: PlanTripScreen),
    MaterialRoute(page: PlaceScreen),
    MaterialRoute(page: AddCollaboratorsScreen),
  ],
)
class $AppRouter {}
