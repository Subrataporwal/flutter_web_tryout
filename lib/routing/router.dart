import 'package:flutter/material.dart';
import 'package:flutter_web_course/pages/Dashboard/dashboard.dart';
import 'package:flutter_web_course/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case myAppsPageRoute:
      return SlideRoute(page: const Dashboard(), settings: settings);
    case appCollectionsPageRoute:
      return SlideRoute(page: const Dashboard(), settings: settings);
    case resourcePageRoute:
      return SlideRoute(page: const Dashboard(), settings: settings);
    case feedbackPageRoute:
      return SlideRoute(page: const Dashboard(), settings: settings);
    case myaccountPageRoute:
      return SlideRoute(page: const Dashboard(), settings: settings);

    default:
      return SlideRoute(page: const Dashboard(), settings: settings);
  }
}

class SlideRoute extends PageRouteBuilder {
  final Widget page;
  @override
  final RouteSettings settings;
  SlideRoute({required this.page, required this.settings})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          settings: settings,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.01, 0),
              end: const Offset(0, 0),
            ).animate(animation),
            child: child,
          ),
        );
}
