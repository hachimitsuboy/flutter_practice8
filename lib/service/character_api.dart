import 'package:dio/dio.dart';
import 'package:stream_provider/model/character.dart';

class CharacterApi {
  Future<List<Character>> getCharacterList() async {
    final dio = Dio();
    const url = "https://api.sampleapis.com/avatar/characters";

    final response = await dio.get(url);

    if (response.statusCode == 200) {
      //データをリストとして格納
      final dataList = response.data as List<dynamic>;

      //dataListの各要素(Json形式)をそれぞれCharacterクラスにパースする
      final characters = dataList.map((e) => Character.fromJson(e)).toList();

      return characters;
    } else {
      final List<Character> empty = [];
      return empty;
    }
  }
}
