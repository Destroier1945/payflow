import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserModel {
  final String name;
  final String? fotoUrl;

  UserModel({required this.name, this.fotoUrl});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], fotoUrl: map['fotoUrdl']);
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  toMap() => {
        'name': name,
        'fotoUrl': fotoUrl,
      };

  String toJson() => jsonDecode(toMap());
}
