import 'package:flutter/material.dart';

import 'package:animations/animations.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roam/presentation/screens/discover_screen.dart';
import 'package:roam/presentation/screens/plan_trip_screen.dart';
import 'package:roam/presentation/screens/profile_screen.dart';
import 'package:roam/presentation/screens/saved_places_screen.dart';
import 'package:roam/presentation/widgets/spaces.dart';
import 'package:roam/values/values.dart';

import 'add_collaborators.dart';
import 'home_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RootScreenState();
  }
}

class _RootScreenState extends State<RootScreen> {
  final PageStorageBucket bucket = PageStorageBucket();
  int _selectedIndex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    PlanTripScreen(),
    DiscoverScreen(),
    SavedPlacesScreen(),
//    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: PageStorage(
          child: pages[_selectedIndex],
          bucket: bucket,
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(int selectedIndex) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(Sizes.RADIUS_30),
        topRight: const Radius.circular(Sizes.RADIUS_30),
      ),
      child: BottomNavigationBar(
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.accentColor,
        unselectedItemColor: AppColors.grey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImagePath.HOME,
              color: AppColors.grey,
            ),
            label: "",
            activeIcon: ActiveIcon(
              hasIcon: false,
              child: SvgPicture.asset(
                ImagePath.HOME,
                color: AppColors.accentColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImagePath.SUITCASE,
            ),
            label: "",
            activeIcon: ActiveIcon(
              hasIcon: false,
              child: SvgPicture.asset(
                ImagePath.SUITCASE,
                color: AppColors.accentColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidHeart),
            label: "",
            activeIcon: ActiveIcon(icon: FontAwesomeIcons.solidHeart),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              ImagePath.KRISTIN_SM,
            ),
            label: "",
            activeIcon: ActiveIcon(
              hasIcon: false,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.accentColor,
                    width: Sizes.WIDTH_2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(Sizes.RADIUS_20),
                  ),
                ),
                child: Image.asset(
                  ImagePath.KRISTIN_SM,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ActiveIcon extends StatelessWidget {
  ActiveIcon({this.icon, this.hasIcon = true, this.child});

  final IconData icon;
  final bool hasIcon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          hasIcon ? Icon(icon) : child,
          SpaceH8(),
          Container(
            width: Sizes.WIDTH_4,
            height: Sizes.HEIGHT_4,
            decoration: BoxDecoration(
              color: AppColors.accentColor,
              borderRadius: const BorderRadius.all(
                const Radius.circular(Sizes.RADIUS_8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
