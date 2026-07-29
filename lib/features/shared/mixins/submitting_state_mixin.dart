import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:flutter/material.dart';

mixin SubmittingStateMixin<T extends StatefulWidget> on State<T> {
  bool _isSubmitting = false;

  bool get isSubmitting => _isSubmitting;

  Future<void> runSubmitting(Future<void> Function() action) async {
    if (_isSubmitting) return;

    setState(() {
      _isSubmitting = true;
    });

    try {
      await action();
    } on AppException {
      // Application errors are presented by the mutation listener.
      // Session expiration is handled globally by SessionNoticeListener.
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
      }
    }
  }
}
