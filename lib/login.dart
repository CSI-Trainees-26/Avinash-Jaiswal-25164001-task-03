import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(25),

            child: Container(

              color: const Color(0xFFF2FBF7),

              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const SizedBox(height: 50),

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

                  // Subtitle msg

                  const SizedBox(height: 5),

                  const Text(
                    'Fresh groceries delivered to your door',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                //   Welcome msg
                  const SizedBox(height: 40),

                  const Align(
                    alignment: Alignment.centerLeft,

                    child: Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                //   Login msg
                  const SizedBox(height: 8),

                  const Align(
                    alignment: Alignment.centerLeft,

                    child: Text(
                      'Login to continue',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),

                //   email box
                  const SizedBox(height: 25),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                //   password box
                  const SizedBox(height: 20),

                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',

                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',

                      prefixIcon: const Icon(
                        Icons.lock,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                //   Forget pass text
                  const SizedBox(height: 10),

                  const Align(
                    alignment: Alignment.centerRight,

                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Color(0xFF16A085),
                      ),
                    ),
                  ),

                //   login btn
                  const SizedBox(height: 25),

                  SizedBox(
                    width: double.infinity,
                    height: 50,

                    child: ElevatedButton(
                      onPressed: () {
                        print('Login button pressed');
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF16A085),
                        foregroundColor: Colors.white,
                      ),

                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                //   Mid text
                  const SizedBox(height: 25),

                  const Text(
                    'OR CONTINUE WITH',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 20),

                //   Google btn
                  SizedBox(
                    width: double.infinity,
                    height: 50,

                    child: OutlinedButton(
                      onPressed: () {
                        print('Google Login');
                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Image.asset(
                            'assets/images/logo.jpg',
                            height: 22,
                            width: 22,
                          ),

                          SizedBox(width: 10),

                          Text(
                            'Continue with Google',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                //   Sign up btn
                  const SizedBox(height: 30),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        "Don't have an account? ",
                      ),

                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF16A085),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                //   Bottom section
                  const SizedBox(height: 30),

                  const Text(
                    'By continuing, you agree to our\n'
                        'Terms of Service and Privacy Policy.',

                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
