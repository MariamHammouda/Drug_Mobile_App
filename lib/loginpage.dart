import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:login_register_auth/auth/register.dart';
import 'package:login_register_auth/components/custom_button.dart';
import 'package:login_register_auth/components/custom_logo_auth.dart';
import 'package:login_register_auth/components/custom_text_title.dart';
import 'package:login_register_auth/homepade.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        color: const Color(0xff006BA5),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 65,
                ),
                CustomLogo(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextTitle(
                  textTitle: "Email",
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextTitle(
                  textTitle: "Password",
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 8,
                    bottom: 30,
                  ),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "Forget Your Password?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            CustomButton(
              titleButton: "Login",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Homepage();
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  onTap: (() => Get.to(Register())),
                  child: const CustomTextTitle(
                    textTitle: "Register",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
