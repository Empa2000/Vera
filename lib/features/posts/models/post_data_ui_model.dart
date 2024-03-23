// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PostDataUiModel {
  final String uuid;
  final int deaths;
  final int kills;
  final int blocks_broken;
  final int balance;
  final DateTime last_login;
  final DateTime last_logout;
  
  PostDataUiModel({
    required this.uuid,
    required this.deaths,
    required this.kills,
    required this.blocks_broken,
    required this.balance,
    required this.last_login,
    required this.last_logout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'deaths': deaths,
      'kills': kills,
      'blocks_broken': blocks_broken,
      'balance': balance,
      'last_login': last_login.millisecondsSinceEpoch,
      'last_logout': last_logout.millisecondsSinceEpoch,
    };
  }

  factory PostDataUiModel.fromMap(Map<String, dynamic> map) {
    return PostDataUiModel(
      uuid: map['uuid'] as String,
      deaths: map['deaths'] as int,
      kills: map['kills'] as int,
      blocks_broken: map['blocks_broken'] as int,
      balance: map['balance'] as int,
      last_login: DateTime.fromMillisecondsSinceEpoch(map['last_login'] as int),
      last_logout: DateTime.fromMillisecondsSinceEpoch(map['last_logout'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory PostDataUiModel.fromJson(String source) => PostDataUiModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
