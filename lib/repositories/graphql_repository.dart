import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:projectname/repositories/remote_config_repository.dart';

import 'auth_repository.dart';

class GraphQLRepository {
  final RemoteConfigRepository remoteConfig;
  GraphQLClient client;
  AuthRepository authRepository;
  final Completer completer = Completer();

  GraphQLRepository({
    @required this.remoteConfig,
    @required this.authRepository,
  }) {
    _init();
  }

  void _init() async {
    String url = await remoteConfig.getGraphqlAdress();
    final _httpLink = HttpLink(
      uri: url,
    );

    final authLink =
        AuthLink(getToken: () async => 'Bearer ${await authRepository.getFBUser().getIdToken()}');

    client = GraphQLClient(
      cache: InMemoryCache(),
      link: authLink.concat(_httpLink),
    );
    completer.complete();
  }

  Future<QueryResult> query({
    String query,
    String header = '',
    Map<String, dynamic> variables,
  }) async {
    try {
      await completer.future;
      // print('Querying: $query');
      final result = await client.query(
        QueryOptions(
          documentNode: gql('''
            query $header{
              $query
            }
          '''),
          fetchPolicy: FetchPolicy.networkOnly,
          variables: variables,
        ),
      );

      return result;
    } catch (e) {
      print(e.toString());
      throw ErrorDescription("TODO: Error Querying $query");
    }
  }

  Future<QueryResult> mutate({
    String mutation,
    String header,
    Map<String, dynamic> variables,
  }) async {
    try {
      await completer.future;
      // print('Mutating: $mutation');
      final result = await client.mutate(
        MutationOptions(
          documentNode: gql('''
            mutation $header{
              $mutation
            }
          '''),
          variables: variables,
        ),
      );

      return result;
    } catch (e) {
      print(e.toString());
      throw ErrorDescription("TODO: Error mutating $mutation");
    }
  }
}
