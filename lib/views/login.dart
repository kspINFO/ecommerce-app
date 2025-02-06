import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Login\n",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: "Get started with your account",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: TextFormField(
              validator: (value) =>
                  value!.isEmpty ? "Email cannot be empty." : null,
              controller: _emailController,
              decoration: InputDecoration(
                  label: Text("Email"), border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: TextFormField(
              validator: (value) => value!.isEmpty
                  ? "Password should have atleast 8 characters"
                  : null,
              controller: _passwordController,
              decoration: InputDecoration(
                label: Text("Password"),
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
