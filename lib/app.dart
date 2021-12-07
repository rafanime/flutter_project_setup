import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fitie/repositories/auth_repository.dart';
import 'package:fitie/repositories/user_repository.dart';
import 'package:fitie/routes.dart';
import 'package:fitie/session/cubit/session_cubit.dart';
import 'package:fitie/ui/shared/utils.dart';
import 'package:fitie/ui/signin/get_started_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(),
        ),
        RepositoryProvider(
          create: (context) => UserRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SessionCubit(
              authRepository: RepositoryProvider.of<AuthRepository>(context),
              userRepository: RepositoryProvider.of<UserRepository>(context),
              analytics: analytics,
            ),
          ),
        ],
        child: BlocListener<SessionCubit, SessionState>(
          listener: (context, state) {
            state.maybeWhen(
              loggedOut: (_, __) {
                navigatorKey.currentState!.pushNamedAndRemoveUntil(
                  GetStartedPage.routeName,
                  ModalRoute.withName(GetStartedPage.routeName),
                );
              },
              orElse: () {},
            );
          },
          child: MaterialApp(
            title: 'ProjectName',
            navigatorKey: navigatorKey,
            onGenerateRoute: Routes.generateRoute,
            initialRoute: GetStartedPage.routeName,
            navigatorObservers: [observer],
          ),
        ),
      ),
    );
  }
}
