import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

extension WidgetRefX on WidgetRef {
  void listenMutationError(
    ProviderListenable<AsyncValue<void>> provider,
    BuildContext context, {
    String fallbackMessage = "Something went wrong.",
    Set<String> additionalIgnoredCodes = const {},
  }) {
    final ignoredCodes = {ErrorCodes.sessionExpired, ...additionalIgnoredCodes};

    listen(provider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          if (error is AppException && ignoredCodes.contains(error.code)) {
            return;
          }

          final message = switch (error) {
            AppException e => e.message,
            _ => fallbackMessage,
          };

          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message)));
        },
      );
    });
  }
}
