import 'package:flutter/material.dart';
import 'package:logging_in_project/screens/login/login_screen.dart';
import 'package:logging_in_project/styles/app_gradients.dart';
import 'package:logging_in_project/widgets/gradient_button.dart';
import 'package:logging_in_project/widgets/gradient_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final firstNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Create an Account',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                GradientText(
                  text: "Join Gevin's\nCoding World",
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  gradient: AppGradients.goldGradient,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                buildInputField(
                  controller: firstNameController,
                  hint: 'First Name',
                  icon: Icons.person,
                ),
                const SizedBox(height: 16),
                buildInputField(
                  controller: emailController,
                  hint: 'Email Address',
                  icon: Icons.email,
                ),
                const SizedBox(height: 16),
                buildInputField(
                  controller: passwordController,
                  hint: 'Password',
                  icon: Icons.lock,
                  obscure: true,
                ),
                const SizedBox(height: 16),
                buildInputField(
                  controller: confirmPasswordController,
                  hint: 'Confirm Password',
                  icon: Icons.lock_outline,
                  obscure: true,
                ),
                const SizedBox(height: 24),
                GradientButton(
                  text: 'Sign Up',
                  onPressed: () {
                    print('Signup clicked');
                  },
                  width: double.infinity,
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      text: "Already have an account? ",
                      style: const TextStyle(color: Colors.white70),
                      children: [
                        TextSpan(
                          text: "Log in",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    bool obscure = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[850],
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(icon, color: Colors.amber),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
