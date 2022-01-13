import 'package:flutter/material.dart';
import 'package:task/src/ui/styles/app_colors.dart';

class ContentField extends StatelessWidget {
  const ContentField({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 10, color: AppColors.contentFieldTitleColor),
        ),
        const SizedBox(
          width: 14,
        ),
        Text(
          subtitle,
          style: const TextStyle(
              fontSize: 10,
              color: AppColors.contentFieldSubtitleColor,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
