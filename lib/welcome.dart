import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lifetasks/core/styles.dart';
import 'package:lifetasks/widgets/primary_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset("assets/images/checklist.svg", height: 360),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(31, 175, 175, 175),
                    blurRadius: 12,
                    offset: Offset(0, -5),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const Text(
                      "Welcome to LifeTasks",
                      style: kPageHeaderTextStyle,
                    ),
                    const SizedBox(height: 12),
                    const Text("Managing your daily tasks has never been so easy!"),
                    const SizedBox(height: 40),
                    PrimaryButton(
                      text: "Get Started",
                      callback: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
