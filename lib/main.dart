import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_app/first_page.dart';
import 'package:sample_app/second_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final goRouter =
        GoRouter(debugLogDiagnostics: true, initialLocation: '/', routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const FirstPage(),
          routes: [
            GoRoute(
              path: 'second',
              builder: (context, state) => const SecondPage(),
            ),
          ]),
    ]);
    return MaterialApp.router(
      routeInformationProvider:goRouter.routeInformationProvider,
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}


final messageStateProvider = StateProvider<String>((ref) {
  return '';
});