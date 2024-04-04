import 'package:flutter/material.dart';
import 'package:learn_app_ui/screens/login_screen.dart';

import '../components/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://assets.materialup.com/uploads/897dce47-abf1-4013-b1cf-32352470830d/preview.jpg"),
              const Text(
                "Online Learning Platform",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "An online learning platform is a webspace or portal for educational content and resources that offers a student everything they need in one place: lectures, resources, opportunities to meet and chat with other students, and more. It is also an excellent way for the student and the teacher to monitor student progress.",
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              CustomButton(
                size: size,
                text: "Start Learning",
                ontap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
