import 'package:flutter/material.dart';
// import 'package:tracker_money/data/expenses.dart';
// import 'package:tracker_money/presentaion/expenses/expenses.dart';

// import '../main/main_view.dart';
// import '../onboarding/onboarding_view.dart';
// import '../splash/splash_view.dart';
import 'string_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String mainRoute = "/main";
  static const String onBoardingRoute = "/onBoarding";
  static const String expensesRoute = "/expenses";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.splashRoute:
      //   return MaterialPageRoute(builder: (_) => const SplashView());

      // case Routes.mainRoute:
      //   return MaterialPageRoute(builder: (_) => const MainView());
      // case Routes.onBoardingRoute:
      //   return MaterialPageRoute(builder: (_) => const OnBoardingView());
      // case Routes.expensesRoute:
      //   return MaterialPageRoute(builder: (_) => const ExpensesView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
                // todo move this string to strings manager
              ),
              body: const Center(
                child: Text(AppStrings.noRouteFound),
              ),
              // todo move this string to strings manager
            ));
  }
}
