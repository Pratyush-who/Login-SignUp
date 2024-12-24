import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:Luffy_Adventure/widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(
        context,
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Stack(
      children: [
        _backgroundGradient(
          context,
        ),
        _foregroundWidgets(context),
      ],
    );
  }

  Widget _backgroundGradient(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.4,
            0.4,
          ],
          colors: [
            Theme.of(context).primaryColor,
            Color.fromRGBO(
              186,
              255,
              227,
              1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _foregroundWidgets(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _avatarImage(
              context,
            ),
            _infoContainer(context),
          ],
        ),
      ),
    );
  }

  Widget _avatarImage(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.34,
      width: MediaQuery.sizeOf(context).width * 0.74,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 30,
                sigmaY: 30,
              ),
              child: Container(
                color: Colors.black.withOpacity(.1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              0,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                'https://i.pinimg.com/736x/81/b1/f2/81b1f2568e7ff0bfc767275ac0db9d29.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoContainer(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .40,
      width: MediaQuery.sizeOf(context).width * .90,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _infoText(context),
          _infoSubText(context),
          CustomButton(
            height: MediaQuery.sizeOf(context).height * 0.06,
            width: MediaQuery.sizeOf(context).width * 0.7,
            isPrimary: true,
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/login",
              );
            },
            text: "Login",
          ),
          CustomButton(
            height: MediaQuery.sizeOf(context).height * 0.06,
            width: MediaQuery.sizeOf(context).width * 0.7,
            isPrimary: false,
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/signup",
              );},
            text: "Sign-up",
          ),
        ],
      ),
    );
  }

  Widget _infoText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text.rich(
        TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(text: "Start your"),
            TextSpan(
              text: " Journey ",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            TextSpan(text: "with Luffy Now!"),
          ],
        ),
      ),
    );
  }

  Widget _infoSubText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Click here to join luffy in his adventures..!!',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black38,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
