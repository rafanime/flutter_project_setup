import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fitie/repositories/auth_repository.dart';
import 'package:fitie/repositories/user_repository.dart';
import 'package:fitie/session/cubit/session_cubit.dart';
import 'package:fitie/ui/signin/cubit/get_started_cubit.dart';
import 'package:fitie/ui/signin/get_started_page.dart';

import 'package:fitie/ui/landing/landing_page.dart';

class Routes {
  static Route generateRoute(RouteSettings settings) {
    final name = settings.name;

    MaterialPageRoute route(Widget widget) {
      return MaterialPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
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

    if (name == LandingPage.routeName) {
      return route(
        LandingPage(),
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
