import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_saas_flutter/utils/router.dart';
import 'package:laundry_saas_flutter/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static String path = "/";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() async {
    await Future.delayed(const Duration(milliseconds: 100));
    mounted ? context.go(HomeScreen.path) : null;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
