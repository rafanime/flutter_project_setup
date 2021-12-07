import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User implements _$User {
  const User._();
  const factory User({
    int? id,
    DateTime? createdAt,
    String? email,
    String? name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const basicGraphQLModel = '''
    id    
    name
  ''';
}
