import 'package:new_app_full/domain/models/signupModel.dart';

abstract class Signupstates {}

class SignUpIntitialStates extends Signupstates {}

class SignUpLoadingStates extends Signupstates {}

class SignUpLoadedStates extends Signupstates {
  SignUpModel signUpModel;
  SignUpLoadedStates({required this.signUpModel});
}

class SignUpErrorStates extends Signupstates {
  String error;
  SignUpErrorStates({required this.error});
}
