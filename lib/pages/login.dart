import 'package:flutter/material.dart';
import 'package:Luffy_Adventure/widgets/custom_button.dart';
import 'package:Luffy_Adventure/widgets/custom_form_field.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(context),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("Login"),
    );
  }

  Widget _buildUI(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _headerText(),
            const SizedBox(height: 20), 
            _loginForm(context),
            _socialLoginButton(context),
            _registerAccountLink(context),
          ],
        ),
      ),
    );
  }

  Widget _headerText() {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Welcome Back..!! \n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          TextSpan(
            text: "Luffy was waiting for you to start his journey",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CustomFormField(
          label: "Email",
        ),
        const SizedBox(height: 20),
        const CustomFormField(
          label: "Password",
        ),
        const SizedBox(height: 30), 
        CustomButton(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          isPrimary: true,
          onPressed: () {},
          text: "Login",
        ),
        const Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 10,
            color: Colors.black38,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _socialLoginButton(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.10,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          const Text(
            'Or Login with...',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialLoginButton(
                height: MediaQuery.sizeOf(context).height * 0.06,
                width: MediaQuery.sizeOf(context).width * 0.45,
                text: 'Google',
                fontSize: 15,
                imageWidth: 20,
                buttonType: SocialLoginButtonType.google,
                onPressed: () {},
              ),
              SocialLoginButton(
                height: MediaQuery.sizeOf(context).height * 0.06,
                width: MediaQuery.sizeOf(context).width * 0.45,
                text: 'GitHub',
                fontSize: 15,
                imageWidth: 20,
                buttonType: SocialLoginButtonType.github,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _registerAccountLink(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Center(
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(
              text: "Don't have an Account? ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            TextSpan(
              text: "Sign Up!",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

}
