import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const PrimaryButton({
    super.key,
    required this.text,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width <= 600 ? size.width * 0.8 : 500,
      child: ElevatedButton(
        onPressed: callback,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(text),
        ),
      ),
    );
  }
}
