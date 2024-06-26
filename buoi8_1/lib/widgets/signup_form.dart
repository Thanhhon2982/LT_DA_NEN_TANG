import 'package:buoi8_1/constants.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          children: [
            const Spacer(),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: defpaultPadding,
              ),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Confirm Password",
              ),
            ),
            const Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
