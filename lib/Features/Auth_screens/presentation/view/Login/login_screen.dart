import 'package:flutter/material.dart';

import '../widgets/custom_bottom_widget.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/form_label.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  static const String routeName= "LoginScreen";
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff004182),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset("assets/images/route_logo.png"),
                const SizedBox(height: 85),
                const Text("Welcome back to route", style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white
                ),),
                const SizedBox(height: 8),
                const Text("please sign in with your email", style: TextStyle(
                    fontSize: 20, color: Colors.white
                ),),
                const SizedBox(height: 40),
                const FormLabel(label: "Email Address"),
                const SizedBox(height: 20),
                CustomTextFiled(
                    hintText: "please enter your email",
                    controller: emailController,
                    /// check email is well.
                    validator: (text) {
                      return text;
                    },
                    type: TextInputType.emailAddress,
                    isPassword: false
                ),
                const SizedBox(height: 32),
                const FormLabel(label: "password"),
                const SizedBox(height: 20),
                CustomTextFiled(
                    hintText: "please enter your password",
                    controller: passwordController,
                    validator: (text) {
                      return text;
                    },
                    type:TextInputType.visiblePassword,
                    isPassword: false
                ),
                const SizedBox(height: 20),
                CustomButtonWidget(
                    onPressed: (){},
                    title: "Login"),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FormLabel(label: " Don't have an account ? "),
                    InkWell(
                      onTap: (){
                        // Navigator.pushNamed(context, RegisterScreen.routeName);
                      },
                      child: const Text("Create an account", style: TextStyle(
                        color: Colors.white, fontSize: 18,
                      ),),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
