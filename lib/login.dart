import 'package:flutter/material.dart';

import 'home.dart';
import 'login_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height: 50),

              // Logo
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: const Color(0xFF16A085),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.shopping_basket,
                  color: Colors.white,
                  size: 40,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'FreshRush',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF18332B),
                ),
              ),

              const Text(
                'Fresh groceries delivered to your door',
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight(800)),
              ),

              const SizedBox(height: 40),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome back!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 8),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please enter your details to sign in ',
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight(700)),
                ),
              ),

              const SizedBox(height: 25),

              const CustomTextField(
                label: 'Email address',
                hint: 'Enter your email',
                icon: Icons.email_outlined,
              ),

              const SizedBox(height: 20),

              const CustomTextField(
                label: 'Password',
                hint: 'Enter your password',
                icon: Icons.lock_outlined,
                obscureText: true,
                hint_icon: Icons.visibility_off_outlined,
              ),

              const SizedBox(height: 10),

              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Color(0xFF16A085),fontWeight:FontWeight.bold),
                ),
              ),

              const SizedBox(height: 25),

              PrimaryButton(
                text: 'Login',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),

              const SizedBox(height: 25),

              const Text(
                'OR CONTINUE WITH',
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight(800)),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {print("Google login");},
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),),

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/logo.jpg',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 10),
                      const Text(
                        'Continue with Google',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Don't have an account? Sign Up",
                style: TextStyle(
                  color: Color(0xFF16A085),
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'By continuing, you agree to our\n'
                'Terms of Service and Privacy Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
