import 'dart:async';
import 'package:crypto_calculator/mobile_app_core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

class GoRouterUtils {
  static void popToRoute(BuildContext context, String routeName) {
    while (GoRouterState.of(context).uri.toString() != '/$routeName' &&
        goRouter.canPop()) {
      goRouter.pop();
    }
  }
}
