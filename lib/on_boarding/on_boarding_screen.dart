import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:to_do_list/core/utilis/app_assets.dart';

import 'home_page.dart';


class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to ToDo List",
          body: "Manage your tasks efficiently and never miss a deadline.",
          image: Image.asset(AppAssets.onBoardingImg1),
        ),
        PageViewModel(
          title: "Organize Your Tasks",
          body: "Create, edit, and delete tasks with ease. Stay organized every day.",
          image: Image.asset(AppAssets.onBoardingImg2, fit: BoxFit.fill,),
        ),
        PageViewModel(
          title: "Set Reminders",
          body: "Get notifications for important tasks and deadlines.",
          image: Image.asset(AppAssets.onBoardingImg3),
        ),
        PageViewModel(
          title: "Get Started",
          body: "Let's dive in and start managing your tasks!",
          image: Image.asset(AppAssets.onBoardingImg4), // Add a fourth image for this page
        ),
      ],
      onDone: () {
        // Navigate to the next screen
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => HomePage(),
        ));
      },
      onSkip: () {
        // Skip to the next screen
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => HomePage(),
        ));
      },
      showSkipButton: true,
      skip: Text("Skip"),
      next: Icon(Icons.arrow_forward),
      done: Text("Done"),
    );
  }
}