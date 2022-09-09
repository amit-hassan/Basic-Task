import '../../index.dart';

class SignUpController{

  late SignUpService _signUpService;

  SignUpController() : _signUpService = SignUpService();

  SignUp getView() => SignUp(service: _signUpService);
}