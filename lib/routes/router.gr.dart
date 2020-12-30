// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/add_collaborators.dart';
import '../presentation/screens/discover_screen.dart';
import '../presentation/screens/follow_screen.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/login_screen.dart';
import '../presentation/screens/my_trips_screen.dart';
import '../presentation/screens/onBoarding_screen.dart';
import '../presentation/screens/place_screen.dart';
import '../presentation/screens/plan_trip_screen.dart';
import '../presentation/screens/profile_screen.dart';
import '../presentation/screens/root_screen.dart';
import '../presentation/screens/saved_places_screen.dart';
import '../presentation/screens/select_interest_screen.dart';
import '../presentation/screens/signup_screen.dart';
import '../presentation/screens/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String onBoardingScreen = '/on-boarding-screen';
  static const String loginScreen = '/login-screen';
  static const String signUpScreen = '/sign-up-screen';
  static const String selectInterestScreen = '/select-interest-screen';
  static const String followScreen = '/follow-screen';
  static const String rootScreen = '/root-screen';
  static const String homeScreen = '/home-screen';
  static const String discoverScreen = '/discover-screen';
  static const String savedPlacesScreen = '/saved-places-screen';
  static const String profileScreen = '/profile-screen';
  static const String myTripsScreen = '/my-trips-screen';
  static const String planTripScreen = '/plan-trip-screen';
  static const String placeScreen = '/place-screen';
  static const String addCollaboratorsScreen = '/add-collaborators-screen';
  static const all = <String>{
    splashScreen,
    onBoardingScreen,
    loginScreen,
    signUpScreen,
    selectInterestScreen,
    followScreen,
    rootScreen,
    homeScreen,
    discoverScreen,
    savedPlacesScreen,
    profileScreen,
    myTripsScreen,
    planTripScreen,
    placeScreen,
    addCollaboratorsScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.onBoardingScreen, page: OnBoardingScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.signUpScreen, page: SignUpScreen),
    RouteDef(Routes.selectInterestScreen, page: SelectInterestScreen),
    RouteDef(Routes.followScreen, page: FollowScreen),
    RouteDef(Routes.rootScreen, page: RootScreen),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.discoverScreen, page: DiscoverScreen),
    RouteDef(Routes.savedPlacesScreen, page: SavedPlacesScreen),
    RouteDef(Routes.profileScreen, page: ProfileScreen),
    RouteDef(Routes.myTripsScreen, page: MyTripsScreen),
    RouteDef(Routes.planTripScreen, page: PlanTripScreen),
    RouteDef(Routes.placeScreen, page: PlaceScreen),
    RouteDef(Routes.addCollaboratorsScreen, page: AddCollaboratorsScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    OnBoardingScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen(),
        settings: data,
      );
    },
    LoginScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen(),
        settings: data,
      );
    },
    SignUpScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen(),
        settings: data,
      );
    },
    SelectInterestScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SelectInterestScreen(),
        settings: data,
      );
    },
    FollowScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FollowScreen(),
        settings: data,
      );
    },
    RootScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RootScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    DiscoverScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DiscoverScreen(),
        settings: data,
      );
    },
    SavedPlacesScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SavedPlacesScreen(),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileScreen(),
        settings: data,
      );
    },
    MyTripsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyTripsScreen(),
        settings: data,
      );
    },
    PlanTripScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PlanTripScreen(),
        settings: data,
      );
    },
    PlaceScreen: (data) {
      final args = data.getArgs<PlaceScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PlaceScreen(
          place: args.place,
          location: args.location,
          imagePath: args.imagePath,
          rating: args.rating,
        ),
        settings: data,
      );
    },
    AddCollaboratorsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddCollaboratorsScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// PlaceScreen arguments holder class
class PlaceScreenArguments {
  final String place;
  final String location;
  final String imagePath;
  final double rating;
  PlaceScreenArguments(
      {@required this.place,
      @required this.location,
      @required this.imagePath,
      @required this.rating});
}
