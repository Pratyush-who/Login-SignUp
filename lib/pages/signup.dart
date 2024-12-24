import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Luffy_Adventure/widgets/custom_button.dart';
import 'package:Luffy_Adventure/widgets/custom_form_field.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(context),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("Sign Up"),
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
            _signUpForm(context),
            _socialSignUpButton(context),
            _loginAccountLink(context),
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
            text: "Join the Crew!\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          TextSpan(
            text: "Luffy is excited to have you onboard!",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _signUpForm(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CustomFormField(
          obscureText: false,
          label: "Name",
        ),
        const SizedBox(height: 20),
        const CustomFormField(
          obscureText: false,
          label: "Email",
        ),
        const SizedBox(height: 20),
        const CustomFormField(
          obscureText: true,
          label: "Password",
        ),
        const SizedBox(height: 20),
        const CustomFormField(
          label: "Confirm Password",
          obscureText: true,
        ),
        const SizedBox(height: 30),
        CustomButton(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          isPrimary: true,
          onPressed: () {},
          text: "Sign Up",
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _socialSignUpButton(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.10,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          const Text(
            'Or Sign Up with...',
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

  Widget _loginAccountLink(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: "Already have an Account? ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text: "Login!",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                 recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}