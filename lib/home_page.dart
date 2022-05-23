import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'model/character.dart';
import 'view_model/provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Character>> characterList = ref.watch(observeRepositoryProvider); //取得したAPIデータの監視
    return Scaffold(
      appBar: AppBar(
        title: const Text("キャラクター画面"),
        centerTitle: true,
      ),
      body: Center(
        child: characterList.when(
          data: (characterList) => ListView.builder(
            itemCount: characterList.length,
            itemBuilder: (context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 15,
                child: ListTile(
                  leading: Image.network(characterList[index].image ?? "https://schoolshop-lab.jp/wp-content/uploads/2018/11/240ec862387d03003cb4c41cd93cb0be.png"),
                  title: Text(characterList[index].name ?? "NO NAME"),
                ),
              );
            },
          ),
          error: (e, _) => Text(e.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
