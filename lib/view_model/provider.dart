import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/character.dart';
import '../repository/repository.dart';


final repositoryProvider = Provider((ref) => Repository());

final observeRepositoryProvider = FutureProvider<List<Character>>((ref) async{
  final repositoryModel = ref.read(repositoryProvider);

  return await repositoryModel.api.getCharacterList();
});