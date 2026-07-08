import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class ProtectedAsyncView<T> extends StatelessWidget {
  const ProtectedAsyncView({
    super.key,
    required this.value,
    required this.builder,
    required this.loading,
    required this.guest,
    required this.error,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) builder;
  final Widget loading;
  final Widget guest;
  final Widget Function(Object error) error;

  @override
  Widget build(BuildContext context) {
    return value.when(
      loading: () => loading,
      data: builder,
      error: (e, _) {
        if (e is AppException && e.code == ErrorCodes.unauthorized) {
          return guest;
        }

        return error(e);
      },
    );
  }
}
