import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectname/repositories/auth_repository.dart';
import 'package:projectname/repositories/user_repository.dart';
import 'package:projectname/session/cubit/session_cubit.dart';
import 'package:projectname/ui/signin/cubit/get_started_cubit.dart';
import 'package:projectname/ui/signin/cubit/signin_cubit.dart';
import 'package:projectname/ui/signin/cubit/signup_cubit.dart';
import 'package:projectname/ui/signin/get_started_page.dart';
import 'package:projectname/ui/signin/signin_page.dart';
import 'package:projectname/ui/signin/signup_page.dart';
import 'package:projectname/ui/test_page.dart';

class Routes {
  static Route generateRoute(RouteSettings settings) {
    final name = settings.name;

    MaterialPageRoute route(Widget widget) {
      return MaterialPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
    }

    if (name == TestPage.routeName) {
      return route(TestPage());
    }

    if (name == GetStartedPage.routeName) {
      return route(
        BlocProvider(
          create: (context) => GetStartedCubit(
            authRepository: RepositoryProvider.of<AuthRepository>(context),
            userRepository: RepositoryProvider.of<UserRepository>(context),
            sessionCubit: BlocProvider.of<SessionCubit>(context),
          ),
          child: GetStartedPage(),
        ),
      );
    }

    if (name == SignInPage.routeName) {
      return route(
        BlocProvider(
          create: (context) => SigninCubit(
            email: settings.arguments as String,
            authRepository: RepositoryProvider.of<AuthRepository>(context),
            userRepository: RepositoryProvider.of<UserRepository>(context),
            sessionCubit: BlocProvider.of<SessionCubit>(context),
          ),
          child: SignInPage(),
        ),
      );
    }

    if (name == SignUpPage.routeName) {
      return route(
        BlocProvider(
          create: (context) => SignupCubit(
            email: settings.arguments as String,
            authRepository: RepositoryProvider.of<AuthRepository>(context),
            userRepository: RepositoryProvider.of<UserRepository>(context),
            sessionCubit: BlocProvider.of<SessionCubit>(context),
          ),
          child: SignUpPage(),
        ),
      );
    }

    return route(_errorRoute(settings));
  }

  static Widget _errorRoute(RouteSettings settings) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Not found'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Route doesn\'t exist'),
            Text('${settings.name}'),
            Text('${settings.arguments}'),
          ],
        ),
      ),
    );
  }
}
