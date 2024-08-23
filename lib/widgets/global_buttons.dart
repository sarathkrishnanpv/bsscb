
import 'package:app/utils/app_colors.dart';
import 'package:app/utils/text_theme.dart';
import 'package:flutter/material.dart';

//primary color button
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.textTheme,
    required this.content,
  });

  final AppTextTheme textTheme;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primary,
        
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0), // Adds padding to the button
        child: Text(
          content,
          style: textTheme.appTextBodyTextXlBold,
          textAlign: TextAlign.center, // Centers the text within the button
        ),
      ),
    );
  }
}