abstract final class Validators {
  static final _emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');

  static String? required(String? value, {required String field}) {
    if (value == null || value.trim().isEmpty) {
      return '$field is required.';
    }

    return null;
  }

  static String? string(
    String? value, {
    required String field,
    int? min,
    int? max,
  }) {
    final requiredError = required(value, field: field);

    if (requiredError != null) {
      return requiredError;
    }

    final text = value!.trim();

    if (min != null && text.length < min) {
      return '$field must be at least $min characters.';
    }

    if (max != null && text.length > max) {
      return '$field must be at most $max characters.';
    }

    return null;
  }

  static String? email(String? value) {
    final requiredError = required(value, field: 'Email');

    if (requiredError != null) {
      return requiredError;
    }

    if (!_emailRegex.hasMatch(value!.trim())) {
      return 'Please enter a valid email address.';
    }

    return null;
  }

  static String? number(
    String? value, {
    required String field,
    int? minLength,
    int? maxLength,
  }) {
    final requiredError = required(value, field: field);

    if (requiredError != null) {
      return requiredError;
    }

    final text = value!.trim();

    if (!RegExp(r'^\d+$').hasMatch(text)) {
      return '$field must contain only numbers.';
    }

    if (minLength != null && text.length < minLength) {
      return '$field must be at least $minLength digits.';
    }

    if (maxLength != null && text.length > maxLength) {
      return '$field must be at most $maxLength digits.';
    }

    return null;
  }

  static String? confirmPassword(String? value, {required String password}) {
    final requiredError = required(value, field: 'Confirm password');

    if (requiredError != null) {
      return requiredError;
    }

    if (value != password) {
      return 'Passwords do not match.';
    }

    return null;
  }
}
