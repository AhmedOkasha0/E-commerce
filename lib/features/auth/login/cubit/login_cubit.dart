import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/auth/login/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
}
