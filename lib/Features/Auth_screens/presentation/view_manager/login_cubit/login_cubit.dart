import 'package:flutter_bazaar/Features/Auth_screens/presentation/view_manager/login_cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit() :super(LoginInitial());

  void login(){}
}