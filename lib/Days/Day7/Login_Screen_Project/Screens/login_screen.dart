import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../Widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  // Email controller
  final TextEditingController emailController =
  TextEditingController();

  // Password controller
  final TextEditingController passwordController =
  TextEditingController();

  // Form key
  final GlobalKey<FormState> formKey =
  GlobalKey<FormState>();

  // Password hide/show
  bool isPasswordHidden = true;

  // Loading state
  bool isLoading = false;

  // Error message
  String? errorMessage;

  // Login function
  Future<void> handleLogin() async {
    // Validate form
    if (!formKey.currentState!.validate()) {
      return;
    }

    // Start loading
    setState(() {
      errorMessage = null;
      isLoading = true;
    });

    // Fake API delay
    await Future.delayed(
      const Duration(seconds: 2),
    );

    // Check widget is still active
    if (!mounted) {
      return;
    }

    // Correct login credentials
    const String correctEmail =
        "admin@gmail.com";

    const String correctPassword =
        "123456";

    // Get entered email
    final String enteredEmail =
    emailController.text.trim();

    // Get entered password
    final String enteredPassword =
        passwordController.text;

    // Check credentials
    if (enteredEmail == correctEmail &&
        enteredPassword == correctPassword) {
      setState(() {
        isLoading = false;
      });

      // Navigate to Home Screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomeScreen();
          },
        ),
      );
    } else {
      setState(() {
        isLoading = false;
        errorMessage =
        "Invalid email or password";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Form(
              key: formKey,

              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),

                  // Welcome text
                  const Center(
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Subtitle
                  const Center(
                    child: Text(
                      "Login to continue",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Email label
                  const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Email field
                  TextFormField(
                    controller:
                    emailController,

                    keyboardType:
                    TextInputType
                        .emailAddress,

                    decoration:
                    InputDecoration(
                      hintText:
                      "Enter your email",

                      prefixIcon:
                      const Icon(
                        Icons.email,
                      ),

                      border:
                      OutlineInputBorder(
                        borderRadius:
                        BorderRadius
                            .circular(12),
                      ),

                      filled: true,
                      fillColor:
                      Colors.white,
                    ),

                    // Email validation
                    validator: (value) {
                      if (value == null ||
                          value
                              .trim()
                              .isEmpty) {
                        return "Please enter your email";
                      }

                      final String email =
                      value.trim();

                      final RegExp
                      emailPattern =
                      RegExp(
                        r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                      );

                      if (!emailPattern
                          .hasMatch(email)) {
                        return "Please enter a valid email";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 20),

                  // Password label
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Password field
                  TextFormField(
                    controller:
                    passwordController,

                    obscureText:
                    isPasswordHidden,

                    decoration:
                    InputDecoration(
                      hintText:
                      "Enter your password",

                      prefixIcon:
                      const Icon(
                        Icons.lock,
                      ),

                      suffixIcon:
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordHidden =
                            !isPasswordHidden;
                          });
                        },

                        icon: Icon(
                          isPasswordHidden
                              ? Icons.visibility
                              : Icons
                              .visibility_off,
                        ),
                      ),

                      border:
                      OutlineInputBorder(
                        borderRadius:
                        BorderRadius
                            .circular(12),
                      ),

                      filled: true,
                      fillColor:
                      Colors.white,
                    ),

                    // Password validation
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty) {
                        return "Please enter your password";
                      }

                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  // Error message
                  if (errorMessage != null)
                    Text(
                      errorMessage!,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                  const SizedBox(height: 15),

                  // Login button
                  LoginButton(
                    isLoading: isLoading,

                    onPressed: isLoading
                        ? null
                        : () {
                      handleLogin();
                    },
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Dispose controllers
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
}