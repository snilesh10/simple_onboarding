import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
          child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Welcome',
            body: 'Welcome to our shop, We are happy to serve you.',
            image: Image.asset('assets/images/screen1.jpg'),
            decoration: getSlideDecoration(),
          ),
          PageViewModel(
            title: 'Add Products To Cart',
            body:
                'Check all our product categories and select products which you want to buy.',
            image: Image.asset('assets/images/screen2.jpg'),
            decoration: getSlideDecoration(),
          ),
          PageViewModel(
            title: 'Pay Money',
            body: 'Pay your bill using any of our supported payment methods.',
            image: Image.asset('assets/images/screen3.jpg'),
            decoration: getSlideDecoration(),
          ),
          PageViewModel(
            title: 'Done',
            body:
                'Great, you finished your purchase, Now give us some time to prepare your order.',
            image: Image.asset('assets/images/screen4.jpg'),
            decoration: getSlideDecoration(),
          ),
          PageViewModel(
            title: 'Shipping',
            body:
                'We will deliver your products as early as possible. Most of our orders are delivered within 48 hours.',
            image: Image.asset('assets/images/screen5.jpg'),
            footer: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
              child: Text('GET STARTED',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily)),
              onPressed: () {},
            ),
            decoration: getSlideDecoration(),
          ),
        ],
        done: Text('Get Started'),
        onDone: () {},
        showSkipButton: true,
        skip: Text('Skip'),
        onSkip: () {},
        dotsDecorator: getDotDecoration(),
        next: Icon(Icons.arrow_forward),
      ));

  PageDecoration getSlideDecoration() => PageDecoration(
        titlePadding: EdgeInsets.all(5),
        imagePadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        titleTextStyle: TextStyle(
            fontSize: 30.0,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(
            fontSize: 20.0, fontFamily: GoogleFonts.aBeeZee().fontFamily),
      );
  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFF000000),
        size: Size(6, 6),
        activeSize: Size(10, 10),
        activeColor: Color(0xFFf9a826),
      );
}
