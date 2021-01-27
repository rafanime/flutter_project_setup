import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectname/repositories/auth_repository.dart';
import 'package:projectname/repositories/graphql_repository.dart';
import 'package:projectname/repositories/remote_config_repository.dart';
import 'package:projectname/repositories/user_repository.dart';
import 'package:projectname/routes.dart';
import 'package:projectname/session/cubit/session_cubit.dart';
import 'package:projectname/ui/signin/get_started_page.dart';
import 'package:projectname/ui/signin/signin_page.dart';
import 'package:projectname/ui/test_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class App extends StatelessWidget {
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => RemoteConfigRepository(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepository(),
        ),
        RepositoryProvider(
          create: (context) => GraphQLRepository(
            remoteConfig: RepositoryProvider.of<RemoteConfigRepository>(context),
            authRepository: RepositoryProvider.of<AuthRepository>(context),
          ),
        ),
        RepositoryProvider(
          create: (context) => UserRepository(
            graphQLRepository: RepositoryProvider.of<GraphQLRepository>(context),
          ),
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
              // state.maybeWhen(
              //   loggedOut: (_, __) {
              //     // navigatorKey.currentState.pushNamedAndRemoveUntil(
              //     //     OnBoardingPage.routeName, ModalRoute.withName(OnBoardingPage.routeName));
              //   },
              //   orElse: () {},
              // );
            },
            child: MaterialApp(
              title: 'ProjectName',
              navigatorKey: navigatorKey,
              onGenerateRoute: Routes.generateRoute,
              initialRoute: GetStartedPage.routeName,
              navigatorObservers: [observer],
            ),
          )),
    );
  }
}
