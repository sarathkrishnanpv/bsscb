import 'package:app/utils/app_colors.dart';
import 'package:app/utils/text_theme.dart';
import 'package:app/widgets/global_buttons.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AppTextTheme>()!;
    return Scaffold(
      body: SafeArea(child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to BSCB",style: textTheme.appTextBodyTextLgBold),
            Text("Culpa pariatur commodo veniam anim eiusmod sit dolor pariatur sit eu exercitation aliquip.",style: textTheme.appTextBodyTextLgRegular,),
            SizedBox(
  width: double.infinity, // Takes up as much horizontal space as possible
  child: PrimaryButton(textTheme: textTheme,content: "Login",),
)

          ],
        ),
      )),
    );
  }
}
