import 'package:flutter/material.dart';
import 'package:flutter_bazaar/Features/Auth_screens/presentation/view/Login/login_screen.dart';

import '../widgets/custom_bottom_widget.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/form_label.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  static const String routeName= "RegisterScreen";
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  final TextEditingController rePasswordController =TextEditingController();
  final TextEditingController nameController =TextEditingController();
  final TextEditingController phoneController =TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;

    return  Scaffold(
      backgroundColor: const Color(0xff004182),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*0.08),
            Image.asset(
              'assets/images/route_logo.png',
              height: 71,
              width: 237,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const FormLabel(label: 'Full Name :'),
                    SizedBox(height: height*0.024),
                    CustomTextFiled(
                        hintText: 'enter your full name',
                        controller: nameController,
                        validator: (text) {
                         return text;
                        },
                        type: TextInputType.name),
                    SizedBox(height: height*0.036),
                    const FormLabel(label: 'Email Address :'),
                    SizedBox(height: height*0.024),
                    CustomTextFiled(
                        hintText: 'enter your email address',
                        controller: emailController,
                        validator: (text) {
                          return text;
                        },
                        type: TextInputType.emailAddress),
                    SizedBox(height: height*0.036),
                    const FormLabel(label: 'Mobile Number :'),
                    SizedBox(height: height*0.024),
                    CustomTextFiled(
                        hintText: 'enter your mobile number',
                        controller: phoneController,
                        validator: (text) {
                          return text;
                        },
                        type: TextInputType.phone),
                    SizedBox(height: height*0.036),
                    const FormLabel(label: 'Password :'),
                    SizedBox(height: height*0.024),
                    CustomTextFiled(
                      hintText: 'enter your password',
                      controller: passwordController,
                      validator: (text) {
                        return text;
                      },
                      type: TextInputType.visiblePassword,
                      isPassword: false,
                    ),
                    SizedBox(height: height*0.036),
                    const FormLabel(label: 'Password Confirmation :'),
                    SizedBox(height: height*0.024),
                    CustomTextFiled(
                      hintText: 're-enter your password confirmation',
                      controller: rePasswordController,
                      validator: (text) {
                       return text;
                      },
                      type: TextInputType.visiblePassword,
                      isPassword: false,
                    ),
                    SizedBox(height: height*0.07),
                    CustomButtonWidget(
                        title: 'Sign Up',
                        onPressed: () {}),
                    SizedBox(height: height*0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account ?  ", style: TextStyle(color: Colors.white,fontSize: 16 , fontWeight: FontWeight.w400),),
                        InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, LoginScreen.routeName);
                            },
                            child: const Text("Login", style: TextStyle(color: Colors.white,fontSize: 18 , fontWeight: FontWeight.w500),)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
