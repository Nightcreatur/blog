import 'dart:ffi';

import 'package:blog/core/theme/color_pallet.dart';
import 'package:blog/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const AuthField(hintText: 'Email'),
              const SizedBox(
                height: 10,
              ),
              const AuthField(hintText: 'Name'),
              const SizedBox(
                height: 10,
              ),
              const AuthField(hintText: 'Password'),
              const SizedBox(
                height: 20,
              ),
              GradientButton(
                  text: 'Sign Up', submit: formKey.currentState!.validate),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Dont't have an account?",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: ' Sign In',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: AppPallete.gradient2,
                                fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
