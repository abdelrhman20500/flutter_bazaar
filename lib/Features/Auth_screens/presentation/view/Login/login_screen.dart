import 'package:flutter/material.dart';
import 'package:flutter_bazaar/Features/Auth_screens/presentation/view_manager/login_cubit/login_cubit.dart';
import 'package:flutter_bazaar/Features/Auth_screens/presentation/view_manager/login_cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Register/register_screen.dart';
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
    final height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff004182),
      body: BlocConsumer<LoginCubit, LoginState>(
        bloc: LoginCubit(),
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
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
                    SizedBox(height: height*0.01),
                    const Text("please sign in with your email", style: TextStyle(
                        fontSize: 20, color: Colors.white
                    ),),
                    SizedBox(height: height*0.05),
                    const FormLabel(label: "Email Address :"),
                    SizedBox(height: height*0.024),
                    CustomTextFiled(
                        hintText: "please enter your email",
                        controller: emailController,
                        /// check email is well.
                        validator: (text) {
                          return "Please Enter A Valid Text";
                        },
                        type: TextInputType.emailAddress,
                        isPassword: false
                    ),
                    SizedBox(height: height*0.04),
                    const FormLabel(label: "password :"),
                    SizedBox(height: height*0.024),
                    CustomTextFiled(
                        hintText: "please enter your password",
                        controller: passwordController,
                        validator: (text) {
                          return "Please Enter A Valid Text";
                        },
                        type:TextInputType.visiblePassword,
                        isPassword: false
                    ),
                    SizedBox(height: height*0.03),
                    CustomButtonWidget(
                        onPressed: (){
                          if(formKey.currentState!.validate()){
                            BlocProvider.of<LoginCubit>(context).login();
                          }
                        },
                        title: "Login"),
                    SizedBox(height: height*0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FormLabel(label: " Don't have an account ? "),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, RegisterScreen.routeName);
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
          );
        },
      ),
    );
  }
}
