import 'package:get_it/get_it.dart';
import 'package:store_app/features/auth/login/cubit/login_cubit.dart';
import 'package:store_app/features/auth/sign_up/cubit/sign_up_cubit.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit());
  getIt.registerLazySingleton<SignUpCubit>(() => SignUpCubit());
}
