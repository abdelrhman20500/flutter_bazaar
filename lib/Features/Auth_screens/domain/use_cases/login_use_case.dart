import 'package:flutter_bazaar/Features/Auth_screens/data/models/auth_model.dart';
import 'package:flutter_bazaar/Features/Auth_screens/domain/repos/login_repo.dart';

class LoginUseCase{
  final LoginRepo loginRepo;
  LoginUseCase(this.loginRepo);
   Future<AuthModel> call({required String email, required String password})async{
     return await loginRepo.loginRepo(email: email, password: password);
   }
}