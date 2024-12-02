import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:store_app/features/auth/login/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Future<void> login() async {
  //   emit(LogInLoading());
  //   try {
  //     final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: emailController.text.trim(),
  //         password: passwordController.text.trim());
  //     emit(LoginSuccess());
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       emit(LoginError(error: 'No user found for that email.'));
  //     } else if (e.code == 'wrong-password') {
  //       emit(LoginError(error: 'Wrong password provided for that user.'));
  //     } else if (e.code == 'invalid-email') {
  //       emit(LoginError(error: 'The email address is not valid.'));
  //       {}
  //     } else if (e.code == "Email or password is incorrect") {
  //       emit(LoginError(error: "Email or password is incorrect"));
  //     }
  //   }
  // }
  Future<void> login() async {
    emit(LogInLoading());
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found for that email.';
          break;
        case 'wrong-password':
          errorMessage = 'Wrong password provided for that user.';
          break;
        case 'invalid-email':
          errorMessage = 'The email address is not valid.';
          break;
        default:
          errorMessage = 'An unknown error occurred. Please try again.';
          break;
      }
      emit(LoginError(error: errorMessage));
    } catch (e) {
      emit(LoginError(error: 'Something went wrong. Please try again later.'));
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        // User canceled the sign-in
        emit(GoogleSignInError(error: "Google Sign-In canceled by user."));
        return;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Sign in to Firebase with the credential
      await FirebaseAuth.instance.signInWithCredential(credential);
      emit(GoogleSignInSuccess());
    } catch (e) {
      emit(GoogleSignInError(error: e.toString()));
    }
  }
}
