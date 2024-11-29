import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/injector/injector.dart';
import 'package:store_app/core/routes/no_route.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/features/auth/login/cubit/login_cubit.dart';
import 'package:store_app/features/auth/login/presentation/screens/login_screen.dart';
import 'package:store_app/features/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:store_app/features/auth/sign_up/presentation/screen/sign_up.dart';
import 'package:store_app/features/blog/presentation/screen/blog_screen.dart';
import 'package:store_app/features/blog/presentation/screen/widgets/blog_article.dart';
import 'package:store_app/features/contac_us/cubit/contact._cubit.dart';
import 'package:store_app/features/contac_us/presentation/contac_us.dart';

import 'package:store_app/features/home/presentation/widgets/main_navigation.dart';
import 'package:store_app/features/splash/splash_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case RoutesNames.splash:
            return SplashScreen();
          case RoutesNames.loginScreen:
            return BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LogInScreen(),
            );
          case RoutesNames.signUpScreen:
            return BlocProvider(
              create: (context) => getIt<SignUpCubit>(),
              child: const SignUpScreen(),
            );
          case RoutesNames.homeScreen:
            return BlocProvider(
              create: (context) => getIt<ContactCubit>(),
              child: BlocProvider(
                create: (context) => getIt<ContactCubit>(),
                child: const MainNavigation(),
              ),
            );
          case RoutesNames.contactUs:
            return BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const ContactUsScreen(),
            );
          case RoutesNames.blogScreen:
            return const BlogScreen();
          case RoutesNames.blogArticle:
            return const BlogArticle();
          default:
            return NoRouteScreen(roteName: settings.name!);
        }
      },
    );
  }
}
