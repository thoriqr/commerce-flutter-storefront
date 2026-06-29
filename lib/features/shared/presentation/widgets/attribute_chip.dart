import 'package:flutter/material.dart';

class AttributeChip extends StatelessWidget {
  const AttributeChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onPressed,
    this.count,
    this.hexColor,
    this.loading = false,
  });

  final String label;
  final int? count;
  final String? hexColor;

  final bool selected;
  final bool loading;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilterChip(
      showCheckmark: false,

      backgroundColor: const Color(0xFFF1EAF5),

      selectedColor: loading
          ? const Color(0xFFF1EAF5)
          : const Color(0xFFDDD2E4),

      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,

      side: BorderSide(
        color: loading
            ? Colors.transparent
            : selected
            ? const Color(0xFFD4C2E1)
            : Colors.transparent,
      ),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),

      avatar: loading || hexColor == null
          ? null
          : CircleAvatar(
              radius: 8,
              backgroundColor: Color(
                int.parse(hexColor!.replaceFirst('#', '0xFF')),
              ),
            ),

      label: Text(
        count == null ? label : '$label ($count)',
        style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
      ),

      selected: loading ? false : selected,

      onSelected: (_) => onPressed(),
    );
  }
}
