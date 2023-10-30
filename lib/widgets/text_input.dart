import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final VoidCallback? suffixIconCallback;

  const TextInput({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIconCallback,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: colorScheme.primary) : null,
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(suffixIcon,
                    color: obscureText ? colorScheme.primary : colorScheme.secondary),
                onPressed: suffixIconCallback,
                splashRadius: 12.0,
              )
            : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        filled: true,
        fillColor: Colors.grey.shade100,
      ),
    );
  }
}

class PasswordTextInput extends StatefulWidget {
  final String? hintText;

  const PasswordTextInput({
    super.key,
    this.hintText,
  });

  @override
  State<PasswordTextInput> createState() => _PasswordTextInputState();
}

class _PasswordTextInputState extends State<PasswordTextInput> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextInput(
      hintText: widget.hintText ?? "Password",
      prefixIcon: Icons.lock,
      obscureText: obscureText,
      suffixIcon: obscureText ? Icons.visibility : Icons.visibility_off,
      suffixIconCallback: () {
        setState(() {
          obscureText = !obscureText;
        });
      },
    );
  }
}
