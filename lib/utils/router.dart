import 'package:go_router/go_router.dart';
import 'package:laundry_saas_flutter/views/error_screen.dart';
import 'package:laundry_saas_flutter/views/home_screen.dart';
import 'package:laundry_saas_flutter/views/splash_screen.dart';

abstract class Router {
  final GoRouter router = GoRouter(
      routes: [
    GoRoute(
      path: SplashScreen.path,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: HomeScreen.path,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
  errorBuilder: (context, state) => const ErrorScreen(),
  );
}
