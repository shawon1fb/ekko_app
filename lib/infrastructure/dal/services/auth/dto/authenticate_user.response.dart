import 'package:ekko/infrastructure/dal/services/auth/data/token.data.dart';
import 'package:ekko/infrastructure/dal/services/data/user.data.dart';

import 'package:json_annotation/json_annotation.dart';

part 'authenticate_user.response.g.dart';

@JsonSerializable()
class AuthenticateUserResponse {
  final bool success;
  final DataResponse? data;
  final String? error;

  const AuthenticateUserResponse({
    required this.success,
    required this.data,
    required this.error,
  });

  factory AuthenticateUserResponse.fromJson(json) =>
      _$AuthenticateUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticateUserResponseToJson(this);
}

@JsonSerializable()
class DataResponse {
  final UserData user;
  final TokenData token;
  const DataResponse({required this.user, required this.token});

  factory DataResponse.fromJson(json) => _$DataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DataResponseToJson(this);
}
