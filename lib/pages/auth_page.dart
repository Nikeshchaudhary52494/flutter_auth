import 'package:flutter/material.dart';
import 'package:flutter_auth/widget/input_field.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

// Text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

// SingnIn Method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Icon(
                  Icons.lock,
                  size: 70,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                InputField(
                  hintText: "Email",
                  controller: emailController,
                  icon: const Icon(Icons.mail),
                  obscure: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                InputField(
                  controller: passwordController,
                  hintText: "password",
                  icon: const Icon(Icons.password),
                  obscure: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: signUserIn,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.green[900],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.0, right: 10),
                      child: Text(
                        "forget password",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(255, 27, 94, 32))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "lib/images/google.png",
                        width: 50,
                      ),
                      const Text(
                        "Contine with Google",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
