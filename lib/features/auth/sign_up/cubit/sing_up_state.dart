class SingUpState {}

class SingUpInitial extends SingUpState {}

class SingUpSuccess extends SingUpState {}

class SingUpLoading extends SingUpState {}

class SingUpError extends SingUpState {
  final String error;

  SingUpError({required this.error});
}
