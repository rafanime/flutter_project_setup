import 'package:flutter/material.dart';
import 'package:projectname/app/di.dart';
import 'package:projectname/app/routing.dart';
import 'package:projectname/business/bloc/auth/auth.dart';
import 'package:projectname/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectname/ui/onboarding/landing_page.dart';
import 'package:projectname/ui/onboarding/splash.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(authService: sl()),
      lazy: false,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isLoading) {
            pushRootRoute(Splash.routeName, navigatorKey);
          } else if (!state.isAuthed) {
            pushRootRoute(LandingPage.routeName, navigatorKey);
          } else if (state.isAuthed) {
            pushRootRoute(Splash.routeName, navigatorKey);
          }
        },
        child: MaterialApp(
          onGenerateRoute: AppRouting.generateRoute,
          theme: AppTheme.themeData,
          navigatorKey: navigatorKey,
          builder: (context, child) {
            BlocProvider.of<AuthBloc>(context).add(AuthStarted());
            return child;
          },
        ),
      ),
    );
  }

  void pushRootRoute(String routeName, GlobalKey<NavigatorState> navigatorKey) {
    navigatorKey.currentState.pushNamedAndRemoveUntil(routeName, (_) => false);
  }
}
