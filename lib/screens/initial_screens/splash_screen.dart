import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/screens/initial_screens/onboarding_screen.dart';
import 'package:food_delivery/screens/regestration_screens/sign_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void checkStatus() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getBool('onboardingStatus') == null) {
      Navigator.pushNamedAndRemoveUntil(
          context, OnboardingScreen.id, (route) => false);
    } else {
      if (sharedPreferences.getBool('isUserSignedIn') == null) {
        Navigator.pushNamedAndRemoveUntil(
            context, SignInScreen.id, (route) => false);
      } else {
        Navigator.pushNamedAndRemoveUntil(
            context, SignInScreen.id, (route) => false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: kWhiteColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: kWhiteColor,
        systemNavigationBarDividerColor: kWhiteColor,
        systemNavigationBarIconBrightness: Brightness.light));
    Future.delayed(const Duration(seconds: 3), () {
      checkStatus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: const Scaffold(
          backgroundColor: kWhiteColor,
          body: Center(
            child: Text(
              "Food Delivery\nApp",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: kGreenColor),
            ),
          )),
    );
  }
}
