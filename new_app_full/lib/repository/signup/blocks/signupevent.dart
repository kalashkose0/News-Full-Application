abstract class SignUpEvent {}

class SignUpUserEvents extends SignUpEvent {
  String email;
  String password;
  String username;
  SignUpUserEvents(
      {required this.email, required this.password, required this.username});
}
