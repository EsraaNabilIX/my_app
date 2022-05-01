import 'package:flutter/material.dart';
import 'package:my_app/presentation/forget_password/forget_password_view.dart';
import 'package:my_app/presentation/login/login_view.dart';
import 'package:my_app/presentation/main/main_view.dart';
import 'package:my_app/presentation/onboarding/onboarding_view.dart';
import 'package:my_app/presentation/register/register_view.dart';
import 'package:my_app/presentation/resources/strings_manager.dart';
import 'package:my_app/presentation/splash/splash_view.dart';
import 'package:my_app/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgetPasswordRoute = '/forgetPassword';
  static const String onBoardingRoute = '/onBoarding';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

// route generator
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
