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
      width: size.width < 600 ? size.width * 0.8 : 550,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 5.0,
        ),
        onPressed: callback,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(text),
        ),
      ),
    );
  }
}
