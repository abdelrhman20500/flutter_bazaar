import 'package:flutter_bazaar/Features/Auth_screens/data/models/auth_model.dart';

abstract class LoginRepo{
  Future<AuthModel> loginRepo({required String email, required String password});
}