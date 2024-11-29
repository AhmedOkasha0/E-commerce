class LoginState {}

class LoginInitial extends LoginState {}

class LogInLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginError extends LoginState {
  final String error;

  LoginError({required this.error});
}
class GoogleSignInLoading extends LoginState {}
class GoogleSignInSuccess extends LoginState {}
class GoogleSignInError extends LoginState {
  final String error;

  GoogleSignInError({required this.error});
}