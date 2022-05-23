

import 'package:stream_provider/model/character.dart';

import '../service/character_api.dart';

class Repository {

  final api = CharacterApi();

  //キャラを取ってくる。それをリスト形式でリターンする。取得処理はviewModelで行う
  Future<List<Character>> getCharacterList() async{
    final List<Character> emptyList = [];

    final result = await api.getCharacterList();
    if(result.isNotEmpty) {
      return result;
    } else {
      return emptyList;
    }

  }
}