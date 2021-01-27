import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigRepository {
  Future<String> getGraphqlAdress() async {
    return this._getString('graphQLAddress');
  }

  Future<String> _getString(String string) async {
    RemoteConfig remoteConfig = await RemoteConfig.instance;

    await remoteConfig.fetch();
    await remoteConfig.activateFetched();

    return remoteConfig.getString(string);
  }
}
