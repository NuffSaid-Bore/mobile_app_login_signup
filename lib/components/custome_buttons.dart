import 'package:flutter/material.dart';

class CustomWelcomeButton extends StatelessWidget {
  const CustomWelcomeButton(
      {super.key, required this.buttonText, required this.function});
  final String buttonText;
  final function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: buttonText == 'Signup'
            ? BoxDecoration(
                color: Colors.deepPurple[700],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                ),
              )
            : const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
              ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 25,
              color: Colors.deepOrange[700],
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
