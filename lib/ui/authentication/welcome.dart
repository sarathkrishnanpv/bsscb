import 'package:app/ui/authentication/signin.dart';
import 'package:app/ui/authentication/signup.dart';
import 'package:app/utils/themes/navigation/navigation_utils.dart';
import 'package:app/utils/themes/text_theme.dart';
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
            const SizedBox(height: 20,),
            SizedBox(
            width: double.infinity, // Takes up as much horizontal space as possible
            child: InkWell(
              onTap: (){
                 RouterUtils.pushWithSlideTransition(context, const SigninPage());
              },
              child: PrimaryButton(textTheme: textTheme,content: "Signin",)),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: () {
              RouterUtils.pushWithSlideTransition(context, const SignupPage());
            },
            child: SizedBox(
              width: double.infinity,
              child: secondaryButton(textTheme: textTheme, content: 'Signup',),
            ),
          )

          ],
        ),
      )),
    );
  }
}
