import 'package:flutter/material.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/signinOrSignUp/signin_or_signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen height
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( // Make it scrollable
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.05), // Use screen height to set dynamic height
              Image.asset("assets/images/welcome_image.png"),
              SizedBox(height: screenHeight * 0.08), // Adjust the size based on the screen height
              Text(
                "Welcome to our freedom \nmessaging app",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenHeight * 0.02), // Dynamic spacing
              Text(
                "Freedom talk any person of your \nmother language.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .color!
                      .withOpacity(0.64),
                ),
              ),
              SizedBox(height: screenHeight * 0.08), // Adjust the size based on the screen height
              FittedBox(
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigninOrSignupScreen(),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Skip",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .color!
                              .withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(width: kDefaultPadding / 4), // Use constants for consistent spacing
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .color!
                            .withOpacity(0.8),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
