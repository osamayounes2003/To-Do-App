import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:to_do_list/core/utils/app_colors.dart';
import 'package:to_do_list/core/widgets/custom_button.dart';
import '../core/utils/app_assets.dart';
import '../core/utils/theme.dart';
import '../home_page.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          titleWidget: Text(
            "Welcome to ToDo List ",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          bodyWidget: Text(
            "Manage your tasks efficiently and never miss a deadline.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          image: Image.asset(AppAssets.onBoardingImg1),
        ),
        PageViewModel(
          titleWidget: Text(
            "Organize Your Tasks",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          bodyWidget: Text(
            "Create, edit, and delete tasks with ease. Stay organized every day.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          image: Image.asset(
            AppAssets.onBoardingImg2,
            fit: BoxFit.fill,
          ),
        ),
        PageViewModel(
          titleWidget: Text(
            "Set Reminders",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          bodyWidget: Text(
            "Get notifications for important tasks and deadlines.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          image: Image.asset(AppAssets.onBoardingImg3),
        ),
        PageViewModel(
          titleWidget: Text(
            "Get Started",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          bodyWidget: Text(
            "Let's dive in and start managing your tasks!",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          image: Image.asset(
              AppAssets.onBoardingImg4), // Add a fourth image for this page
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
      skip: CustomButton(
          buttonText: 'Skip',
          buttonColor: AppColors.blue,
          textColor: AppColors.white),
      next: CustomButton(
          buttonText: 'Next',
          buttonColor: AppColors.blue,
          textColor: AppColors.white),
      done: CustomButton(
          buttonText: 'Done',
          buttonColor: AppColors.green,
          textColor: AppColors.white)
    );
  }
}
