import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:new_app_full/data/remote/apiHelper.dart';
import 'package:new_app_full/data/remote/urls.dart';
import 'package:new_app_full/domain/models/signupModel.dart';
import 'package:new_app_full/domain/models/signupStates.dart';
import 'package:new_app_full/repository/signup/blocks/signupevent.dart';

class Signupbloc extends Bloc<SignUpEvent, Signupstates> {
  ApiHelper apiHelper;
  Signupbloc({required this.apiHelper}) : super(SignUpIntitialStates()) {
    on<SignUpUserEvents>((event, emit) async {
      emit(SignUpLoadingStates());
      try {
        final Responsedata =
            await apiHelper.postapi(url: BaseUrls.signup, bodyparams: {
          "email": event.email,
          "password": event.password,
          "username": event.username,
        });
        final signUpModel = SignUpModel.fromJson(Responsedata);
        emit(SignUpLoadedStates(signUpModel: signUpModel));
      } catch (ex) {
        emit(SignUpErrorStates(error: ex.toString()));
      }
    });
  }
}
