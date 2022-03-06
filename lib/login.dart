import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:teamang_hackathon/botnavbar.dart';
import 'package:teamang_hackathon/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Login to E-Bigay',
      logo: AssetImage('assets/images/logo.png'),
      onLogin: (_) => Future(() => null),
      onSignup: (_) => Future(() => null),
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => BotNavBar(),
        ));
      },
      onRecoverPassword: (_) => Future(() => null),
      messages: LoginMessages(
        userHint: 'Username',
        passwordHint: 'Password',
        confirmPasswordHint: 'Confirm',
        loginButton: 'LOG IN',
        signupButton: 'REGISTER',
        forgotPasswordButton: 'Forgot Password',
        recoverPasswordButton: 'HELP ME',
        goBackButton: 'GO BACK',
        confirmPasswordError: 'Not match!',
        recoverPasswordDescription:
            'Type your email to a receive a recovery linkx',
        recoverPasswordSuccess: 'Password rescued successfully',
      ),
    );
  }
}
