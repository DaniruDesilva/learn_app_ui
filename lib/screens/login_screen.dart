import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_app_ui/screens/my.classes.dart';

import '../components/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.purple, fontSize: 20),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.purple,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Learning App",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "Enter Your Login Details to access your account",
                style: TextStyle(color: Colors.purple),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialButton(
                    size: size,
                    icon: FontAwesomeIcons.facebook,
                    text: "Facebook",
                  ),
                  SocialButton(
                    size: size,
                    icon: FontAwesomeIcons.googlePlus,
                    text: "Google",
                    color: Colors.red,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    label: const Text("Email")),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    label: const Text("Password")),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: false, onChanged: (val) {}),
                  const Text(
                    "Remember Me",
                    style: TextStyle(color: Colors.purple),
                  ),
                  const Spacer(),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                size: size,
                text: "Login With Your Account",
                ontap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyClasses()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                  text: const TextSpan(
                      text: "Don't have an Account ?",
                      style: TextStyle(color: Colors.purple, fontSize: 12),
                      children: [
                    TextSpan(
                        text: "Create Account",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton(
      {super.key,
      required this.size,
      required this.icon,
      required this.text,
      this.color = Colors.blue});
  final Size size;
  final String text;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 0.4,
        height: 50,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          )
        ]));
  }
}
