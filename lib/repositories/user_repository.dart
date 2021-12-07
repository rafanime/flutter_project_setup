import 'package:fitie/models/user.dart';

class UserRepository {
  late User _user;

  User get user => _user;

  Future<User?> getMyUser(User user, {int retries = 0}) async {
    return null;
    //   try {
    //     final result = await graphQLRepository.query(query: '''
    //       user(where: {email: "${user.email}"}) {
    //         ${User.basicGraphQLModel}
    //       }
    //     ''');

    //     if (result.data == null) {
    //       print(result.exception);
    //       throw ErrorDescription('TODO: Error getting user');
    //     }

    //     final userData = result.data['user'];

    //     _user = User.fromJson(userData);
    //     return _user;
    //   } catch (e) {
    //     if (retries > 0) {
    //       await Future.delayed(Duration(seconds: 1));
    //       return getMyUser(user, retries: retries - 1);
    //     } else {
    //       throw ErrorDescription('TODO: Error getting user');
    //     }
    //   }
  }

  Future<User?> getUserProfile(User user) async {
    return null;
    //   try {
    //     final result = await graphQLRepository.query(query: '''
    //       user(where: {id: ${user.id}}) {
    //         ${User.basicGraphQLModel}
    //       }
    //     ''');

    //     if (result.data == null) {
    //       print(result.exception);
    //       throw ErrorDescription('TODO: Error getting user');
    //     }

    //     final userData = result.data['user'];

    //     return User.fromJson(userData);
    //   } catch (e) {
    //     throw ErrorDescription('TODO: Error getting user');
    //   }
    // }
  }
}
