import 'package:flutter/material.dart';
import 'package:roam/routes/router.gr.dart';
import 'package:roam/values/values.dart';

import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: StringConst.APP_NAME,
      theme: AppTheme.lightThemeData,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
