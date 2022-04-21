// variable
import 'package:email_validator/email_validator.dart';

const String kAppName = 'Food Delivery App';
const String kGETSTARTED = 'GET STARTED';
const String kSignIn = 'Sign In';
const String kWelcomeTo = 'Welcome to';
const String kSignInDescription =
    'Enter your Phone number or Email address for sign in. Enjoy your food :)';
const String kEmailAddress = 'Email Address';
const String kPassword = 'Password';
const String kForgotPassword = 'Forgot Password?';
const String kSIGNIN = 'SIGN IN';
const String kOr = 'Or';
const String kCreateNewAccount = 'Create new account';
const String kDontHaveAccount = 'Don\'t have account?';
const String kCONTINUEWITHFACEBOOK = 'CONNECT WITH FACEBOOK';
const String kCONTINUEWITHGOOGLE = 'CONNECT WITH GOOGLE';
const String kSignUp = 'Sign Up';
const String kCreateAccount = 'Create Account';
const String kSignUpDescription =
    'Enter your Name, Email, Password for sign up.';
const String kName = 'Name';
const String kConfirmPassword = 'Confirm Password';
const String kSIGNUP = 'SIGN UP';
const String kAlreadyHaveAccount = 'Already have account?';
const String kAgreeToOurTerms =
    'By Signing up you agree to our Terms Conditions & Privacy Policy';
const String kForgotPasswordDescription =
    'Enter your email address and we will send you a reset instructions.';
const String kRESETPASSWORD = 'RESET PASSWORD';
const String kForgotPasswordNoQM = 'Forgot Password';
const String kPhoneNumberAppBarTitle = 'Login to Foodly';
const String kPhoneNumberTopTextsTitle = 'Get started with Foodly';
const String kPhoneNumberTopTextsDescription =
    'Enter your phone number to use foodly and enjoy your food :)';
const String kPhoneNumber = 'Phone Number';
const String kVerifyPhoneNumber = 'Verify phone number';
const String kVERIFYPHONENUMBER = 'VERIFY PHONE NUMBER';
const String kVerifyPhoneNumberTopTextsTitle =
    'Enter the 6-Digit code sent to you at';
const String kCONTINUE = 'CONTINUE';
const String kDidntReceiveCode = 'Didn\'t receive code?';
const String kResendAgain = 'Resend Again';
const String kChangePassword = 'Change Password';
const String kChangePasswordTopTextsDescription =
    'Enter new password for your account.';
const String kNewPassword = 'New Password';
const String kConfirmNewPassword = 'Confirm New Password';
const String kVerifyEmailAddress = 'Verify email address';
const String kVerifyEmailAddressTopTextsDescription =
    'Enter the 6-Digit code sent to you at';

//errors
const String kNameIncorrectError = 'Name is incorrect!';
const String kNameEmptyError = 'Name can\t be empty!';
const String kEmailIncorrectError = 'Email is incorrect!';
const String kEmailEmptyError = 'Email can\t be empty!';
const String kPasswordIncorrectError = 'Password must be at least 8 character!';
const String kPasswordEmptyError = 'Password can\t be empty!';
const String kConfirmPasswordIncorrectError =
    'Confirm password must be at least 8 character!';
const String kConfirmPasswordEmptyError = 'Confirm password can\t be empty!';
const String kPhoneNumberIncorrectError = 'Phone number is incorrect!';
const String kPhoneNumberEmptyError = 'Phone number can\t be empty!';
const String kPasswordMatchIncorrectError = 'Passwords doesn\'t match!';
const String kNewPasswordEmptyError = 'New password can\t be empty!';
const String kNewPasswordIncorrectError =
    'New password must be at least 8 character!';
const String kConfirmNewPasswordEmptyError =
    'Confirm new password can\t be empty!';
const String kConfirmNewPasswordIncorrectError =
    'Confirm new password must be at least 8 character!';

// lists
List onboardingDetailsList = [
  {
    'title': 'All your favorites',
    'description':
        'Order from the best local restaurants with easy, on-demand delivery.',
    'imageSource': 'onboarding_image_1'
  },
  {
    'title': 'Free delivery offers',
    'description':
        'Free delivery for new customers via Apple Pay and others payment methods.',
    'imageSource': 'onboarding_image_2'
  },
  {
    'title': 'Choose your food',
    'description':
        'Easily find your type of food craving and you\'ll get delivery in wide range.',
    'imageSource': 'onboarding_image_3'
  }
];

List validatorList = [];

//validator errors
bool emailValidator(String emailAddress) {
  if (emailAddress != '') {
    if (validatorList.contains(kEmailEmptyError)) {
      validatorList.remove(kEmailEmptyError);
    }
    if (EmailValidator.validate(emailAddress)) {
      if (validatorList.contains(kEmailIncorrectError)) {
        validatorList.remove(kEmailIncorrectError);
      }
      return false;
    } else {
      if (!validatorList.contains(kEmailIncorrectError)) {
        validatorList.add(kEmailIncorrectError);
      }
      return true;
    }
  } else {
    if (!validatorList.contains(kEmailEmptyError)) {
      validatorList.add(kEmailEmptyError);
    }
    return true;
  }
}

bool passwordValidator(
    String password, String emptyError, String incorrectError) {
  if (password != '') {
    if (validatorList.contains(emptyError)) {
      validatorList.remove(emptyError);
    }
    if (password.length >= 8) {
      if (validatorList.contains(incorrectError)) {
        validatorList.remove(incorrectError);
      }
      return false;
    } else {
      if (!validatorList.contains(incorrectError)) {
        validatorList.add(incorrectError);
      }
      return true;
    }
  } else {
    if (!validatorList.contains(emptyError)) {
      validatorList.add(emptyError);
    }
    return true;
  }
}

bool nameValidator(String name) {
  bool isNameContainDigit = false;
  List number = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  if (name != '') {
    if (validatorList.contains(kNameEmptyError)) {
      validatorList.remove(kNameEmptyError);
    }
    for (int i = 0; i < name.length; i++) {
      for (int j = 0; j < number.length; j++) {
        if (name[i].contains(number[j])) {
          isNameContainDigit = true;
          break;
        }
      }
    }
    if (isNameContainDigit) {
      if (!validatorList.contains(kNameIncorrectError)) {
        validatorList.add(kNameIncorrectError);
      }
      return true;
    } else {
      if (validatorList.contains(kNameIncorrectError)) {
        validatorList.remove(kNameIncorrectError);
      }
      return false;
    }
  } else {
    if (!validatorList.contains(kNameEmptyError)) {
      validatorList.add(kNameEmptyError);
    }
    return true;
  }
}

bool confirmPasswordValidator(String confirmPassword) {
  if (confirmPassword != '') {
    if (validatorList.contains(kConfirmPasswordEmptyError)) {
      validatorList.remove(kConfirmPasswordEmptyError);
    }
    if (confirmPassword.length >= 8) {
      if (validatorList.contains(kConfirmPasswordIncorrectError)) {
        validatorList.remove(kConfirmPasswordIncorrectError);
      }
      return false;
    } else {
      if (!validatorList.contains(kConfirmPasswordIncorrectError)) {
        validatorList.add(kConfirmPasswordIncorrectError);
      }
      return true;
    }
  } else {
    if (!validatorList.contains(kConfirmPasswordEmptyError)) {
      validatorList.add(kConfirmPasswordEmptyError);
    }
    return true;
  }
}

bool passwordsMatchValidator(String password, String confirmPassword) {
  if (password.contains(confirmPassword)) {
    if (validatorList.contains(kPasswordMatchIncorrectError)) {
      validatorList.remove(kPasswordMatchIncorrectError);
    }
    return false;
  } else {
    if (!validatorList.contains(kPasswordMatchIncorrectError)) {
      validatorList.add(kPasswordMatchIncorrectError);
    }
    return true;
  }
}

bool phoneNumberValidator(String phoneNumber) {
  if (phoneNumber != '') {
    if (validatorList.contains(kPhoneNumberEmptyError)) {
      validatorList.remove(kPhoneNumberEmptyError);
    }
    if (phoneNumber.length >= 10) {
      if (validatorList.contains(kPhoneNumberIncorrectError)) {
        validatorList.remove(kPhoneNumberIncorrectError);
      }
      return false;
    } else {
      if (!validatorList.contains(kPhoneNumberIncorrectError)) {
        validatorList.add(kPhoneNumberIncorrectError);
      }
      return true;
    }
  } else {
    if (!validatorList.contains(kPhoneNumberEmptyError)) {
      validatorList.add(kPhoneNumberEmptyError);
    }
    return true;
  }
}

bool codeDigitValidator(String codeDigit) {
  bool isCodeContainNumber = true;
  List number = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  if (codeDigit != '') {
    for (int i = 0; i < codeDigit.length; i++) {
      for (int j = 0; j < number.length; j++) {
        if (codeDigit[i].contains(number[j])) {
          isCodeContainNumber = false;
          break;
        }
      }
    }
    return isCodeContainNumber;
  } else {
    return isCodeContainNumber;
  }
}
