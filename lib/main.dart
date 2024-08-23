import 'package:app/ui/splash_screens/welcome.dart';
import 'package:app/utils/app_colors.dart';
import 'package:app/utils/text_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          AppTextTheme.fallback(),
        ],
        scaffoldBackgroundColor: AppColors.lightwhite
      ),
      home: WelcomePage(),
    );
  }
}
