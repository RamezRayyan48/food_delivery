import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screens/home_screen.dart';
import 'package:food_delivery/screens/regestration_screens/change_password_screen.dart';
import 'package:food_delivery/screens/regestration_screens/confirm_email_address_screen.dart';
import 'package:food_delivery/screens/regestration_screens/confirm_phone_number_screen.dart';
import 'package:food_delivery/screens/regestration_screens/forgot_password_screen.dart';
import 'package:food_delivery/screens/initial_screens/onboarding_screen.dart';
import 'package:food_delivery/screens/regestration_screens/phone_number_screen.dart';
import 'package:food_delivery/screens/regestration_screens/sign_in_screen.dart';
import 'package:food_delivery/screens/regestration_screens/sign_up_screen.dart';
import 'package:food_delivery/screens/initial_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        SignInScreen.id: (context) => const SignInScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        PhoneNumberScreen.id: (context) => const PhoneNumberScreen(),
        ConfirmPhoneNumberScreen.id: (context) =>
            const ConfirmPhoneNumberScreen(),
        ChangePasswordScreen.id: (context) => const ChangePasswordScreen(),
        ConfirmEmailAddressScreen.id: (context) =>
            const ConfirmEmailAddressScreen(),
      },
    );
  }
}
