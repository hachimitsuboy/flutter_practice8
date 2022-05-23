import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'character.freezed.dart';

part 'character.g.dart';


@freezed
class Character with _$Character {

  const factory Character({
    required String? name,
    required String? image,
  }) = _Character;


  factory Character.fromJson(Map<String, Object?> json)
  => _$CharacterFromJson(json);
}