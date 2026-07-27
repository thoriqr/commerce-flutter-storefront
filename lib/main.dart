import 'package:commerce_flutter_storefront/core/router/app_router.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/session_notice_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(retry: (_, _) => null, child: const CommerceApp()));
}

class CommerceApp extends StatelessWidget {
  const CommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      builder: (context, child) {
        return SessionNoticeListener(child: child ?? const SizedBox.shrink());
      },
      theme: ThemeData(
        brightness: Brightness.light,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}
