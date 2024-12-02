import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/auth/sign_up/cubit/sing_up_state.dart';

class SignUpCubit extends Cubit<SingUpState> {
  SignUpCubit() : super(SingUpInitial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp() async {
    try {
      emit(SingUpLoading());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      emit(SingUpSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SingUpError(error: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SingUpError(error: 'The email is already in use.'));
      }
    } catch (e) {
      emit(SingUpError(error: e.toString()));
    }
  }
}
