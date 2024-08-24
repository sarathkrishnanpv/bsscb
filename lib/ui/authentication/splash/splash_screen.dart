import 'package:app/gen/assets.gen.dart';
import 'package:app/providers/splash_provider.dart';
import 'package:app/utils/responsive_config.dart';
import 'package:app/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(seconds: 2), vsync: this);
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeInOut);

    // Delay the state change until after the first build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller!.forward();
      Provider.of<SplashScreenProvider>(context, listen: false).showSplash();

      _controller!.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Provider.of<SplashScreenProvider>(context, listen: false).hideSplash();
        }
      });
    });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.linear01
        ),
        child: Center(
          child: FadeTransition(
            opacity: _animation!,
            child: Center(child: Container(
              height: context.screenWidth/3,width: context.screenWidth/3,
              child: Image.asset(Assets.logo.logoPng.path))),
          ),
        ),
      ),
    );
  }
}
