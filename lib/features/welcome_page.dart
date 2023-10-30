import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lifetasks/core/styles.dart';
import 'package:lifetasks/widgets/primary_button.dart';
import 'package:lifetasks/widgets/responsive.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Responsive(
          child: Column(
            children: [
              SvgPicture.asset("assets/images/checklist.svg", height: 360),
              const Text(
                "Welcome to LifeTasks",
                style: kPageHeaderTextStyle,
              ),
              const SizedBox(height: 12),
              const Text("Managing your daily tasks has never been so easy!"),
              const SizedBox(height: 60),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 380),
                child: PrimaryButton(
                  text: "Get Started",
                  callback: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
