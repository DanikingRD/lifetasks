import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lifetasks/core/styles.dart';
import 'package:lifetasks/widgets/primary_button.dart';
import 'package:lifetasks/widgets/responsive.dart';
import 'package:lifetasks/widgets/text_input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Center(
        child: Responsive(
          child: Column(
            children: [
              const SizedBox(height: 36),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Let's create your account",
                  style: kPageHeaderTextStyle,
                ),
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create a new account using your email and password",
                ),
              ),
              const SizedBox(height: 24),
              const TextInput(hintText: "Username", prefixIcon: Icons.person),
              const SizedBox(height: 12),
              const TextInput(hintText: "Email", prefixIcon: Icons.email),
              const SizedBox(height: 12),
              const PasswordTextInput(),
              const SizedBox(height: 16),
              PrimaryButton(
                text: "Submit",
                callback: () {},
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Sign in",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
