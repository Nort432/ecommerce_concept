import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:ecommerce_concept/src/presentation/screens/error/error_screen.dart';
import 'package:ecommerce_concept/src/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case kRouteHomeView:
        return _buildRoute(settings, HomeView());

      case kRouteErrorView:
        return _buildRoute(settings, const ErrorView());

      default:
        return _buildRoute(settings, const ErrorView());
    }
  }

  static MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return new MaterialPageRoute(
      settings: settings,
      builder: (ctx) => builder,
    );
  }
}
