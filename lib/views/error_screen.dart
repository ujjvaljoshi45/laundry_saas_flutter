import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:laundry_saas_flutter/views/home_screen.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        const Text("Page Not Found"),
        TextButton(child: const Text("Click Here to Continue"),onPressed: () => context.go(HomeScreen.path),),
      ],
    ));
  }
}
