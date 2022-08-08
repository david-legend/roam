// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../presentation/screens/add_collaborators.dart' as _i14;
import '../presentation/screens/discover_screen.dart' as _i9;
import '../presentation/screens/follow_screen.dart' as _i6;
import '../presentation/screens/home_screen.dart' as _i8;
import '../presentation/screens/login_screen.dart' as _i3;
import '../presentation/screens/onBoarding_screen.dart' as _i2;
import '../presentation/screens/place_screen.dart' as _i13;
import '../presentation/screens/plan_trip_screen.dart' as _i12;
import '../presentation/screens/profile_screen.dart' as _i11;
import '../presentation/screens/root_screen.dart' as _i7;
import '../presentation/screens/saved_places_screen.dart' as _i10;
import '../presentation/screens/select_interest_screen.dart' as _i5;
import '../presentation/screens/signup_screen.dart' as _i4;
import '../presentation/screens/splash_screen.dart' as _i1;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    OnBoardingScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.OnBoardingScreen());
    },
    LoginScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginScreen());
    },
    SignUpScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.SignUpScreen());
    },
    SelectInterestScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SelectInterestScreen());
    },
    FollowScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.FollowScreen());
    },
    RootScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.RootScreen());
    },
    HomeScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.HomeScreen());
    },
    DiscoverScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.DiscoverScreen());
    },
    SavedPlacesScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.SavedPlacesScreen());
    },
    ProfileScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.ProfileScreen());
    },
    PlanTripScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.PlanTripScreen());
    },
    PlaceScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PlaceScreenRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.PlaceScreen(
              place: args.place,
              location: args.location,
              imagePath: args.imagePath,
              rating: args.rating));
    },
    AddCollaboratorsScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i14.AddCollaboratorsScreen());
    }
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i15.RouteConfig(OnBoardingScreenRoute.name,
            path: '/on-boarding-screen'),
        _i15.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i15.RouteConfig(SignUpScreenRoute.name, path: '/sign-up-screen'),
        _i15.RouteConfig(SelectInterestScreenRoute.name,
            path: '/select-interest-screen'),
        _i15.RouteConfig(FollowScreenRoute.name, path: '/follow-screen'),
        _i15.RouteConfig(RootScreenRoute.name, path: '/root-screen'),
        _i15.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i15.RouteConfig(DiscoverScreenRoute.name, path: '/discover-screen'),
        _i15.RouteConfig(SavedPlacesScreenRoute.name,
            path: '/saved-places-screen'),
        _i15.RouteConfig(ProfileScreenRoute.name, path: '/profile-screen'),
        _i15.RouteConfig(PlanTripScreenRoute.name, path: '/plan-trip-screen'),
        _i15.RouteConfig(PlaceScreenRoute.name, path: '/place-screen'),
        _i15.RouteConfig(AddCollaboratorsScreenRoute.name,
            path: '/add-collaborators-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i15.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.OnBoardingScreen]
class OnBoardingScreenRoute extends _i15.PageRouteInfo<void> {
  const OnBoardingScreenRoute()
      : super(OnBoardingScreenRoute.name, path: '/on-boarding-screen');

  static const String name = 'OnBoardingScreenRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i15.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i4.SignUpScreen]
class SignUpScreenRoute extends _i15.PageRouteInfo<void> {
  const SignUpScreenRoute()
      : super(SignUpScreenRoute.name, path: '/sign-up-screen');

  static const String name = 'SignUpScreenRoute';
}

/// generated route for
/// [_i5.SelectInterestScreen]
class SelectInterestScreenRoute extends _i15.PageRouteInfo<void> {
  const SelectInterestScreenRoute()
      : super(SelectInterestScreenRoute.name, path: '/select-interest-screen');

  static const String name = 'SelectInterestScreenRoute';
}

/// generated route for
/// [_i6.FollowScreen]
class FollowScreenRoute extends _i15.PageRouteInfo<void> {
  const FollowScreenRoute()
      : super(FollowScreenRoute.name, path: '/follow-screen');

  static const String name = 'FollowScreenRoute';
}

/// generated route for
/// [_i7.RootScreen]
class RootScreenRoute extends _i15.PageRouteInfo<void> {
  const RootScreenRoute() : super(RootScreenRoute.name, path: '/root-screen');

  static const String name = 'RootScreenRoute';
}

/// generated route for
/// [_i8.HomeScreen]
class HomeScreenRoute extends _i15.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i9.DiscoverScreen]
class DiscoverScreenRoute extends _i15.PageRouteInfo<void> {
  const DiscoverScreenRoute()
      : super(DiscoverScreenRoute.name, path: '/discover-screen');

  static const String name = 'DiscoverScreenRoute';
}

/// generated route for
/// [_i10.SavedPlacesScreen]
class SavedPlacesScreenRoute extends _i15.PageRouteInfo<void> {
  const SavedPlacesScreenRoute()
      : super(SavedPlacesScreenRoute.name, path: '/saved-places-screen');

  static const String name = 'SavedPlacesScreenRoute';
}

/// generated route for
/// [_i11.ProfileScreen]
class ProfileScreenRoute extends _i15.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(ProfileScreenRoute.name, path: '/profile-screen');

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i12.PlanTripScreen]
class PlanTripScreenRoute extends _i15.PageRouteInfo<void> {
  const PlanTripScreenRoute()
      : super(PlanTripScreenRoute.name, path: '/plan-trip-screen');

  static const String name = 'PlanTripScreenRoute';
}

/// generated route for
/// [_i13.PlaceScreen]
class PlaceScreenRoute extends _i15.PageRouteInfo<PlaceScreenRouteArgs> {
  PlaceScreenRoute(
      {required String place,
      required String location,
      required String imagePath,
      required double rating})
      : super(PlaceScreenRoute.name,
            path: '/place-screen',
            args: PlaceScreenRouteArgs(
                place: place,
                location: location,
                imagePath: imagePath,
                rating: rating));

  static const String name = 'PlaceScreenRoute';
}

class PlaceScreenRouteArgs {
  const PlaceScreenRouteArgs(
      {required this.place,
      required this.location,
      required this.imagePath,
      required this.rating});

  final String place;

  final String location;

  final String imagePath;

  final double rating;

  @override
  String toString() {
    return 'PlaceScreenRouteArgs{place: $place, location: $location, imagePath: $imagePath, rating: $rating}';
  }
}

/// generated route for
/// [_i14.AddCollaboratorsScreen]
class AddCollaboratorsScreenRoute extends _i15.PageRouteInfo<void> {
  const AddCollaboratorsScreenRoute()
      : super(AddCollaboratorsScreenRoute.name,
            path: '/add-collaborators-screen');

  static const String name = 'AddCollaboratorsScreenRoute';
}
