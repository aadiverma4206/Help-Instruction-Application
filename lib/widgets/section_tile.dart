import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';

class SectionTile extends StatelessWidget {
  final String title;
  final List<String> items;

  const SectionTile({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16),
        childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        iconColor: AppColors.primary,
        collapsedIconColor: Colors.grey,
        children: items
            .map(
              (item) => ListTile(
            leading: const Icon(Icons.check_circle, color: AppColors.primary),
            title: Text(item),
            contentPadding: EdgeInsets.zero,
          ),
        )
            .toList(),
      ),
    );
  }
}