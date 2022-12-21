import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}
  class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair> {};
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generador de palabras'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _pushSaved,
            tooltip: 'Palabras Seleccionadas ',
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i){
          if (i.isOdd) return const Divider();

          final index = i ~/ 2;

          if (index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }

          final alreadySaved = _saved.contains(_suggestions[index]);


          return ListTile(
            title: Text(
              _suggestions[index].asPascalCase,
              style: _biggerFont,
            ),
            trailing: Icon(
              alreadySaved ? Icons.favorite : Icons.favorite_border,
              color: alreadySaved ? Colors.red : null,
              semanticLabel: alreadySaved ? 'remove from saved' : 'Save',
            ),
            onTap: (){
              setState(() {
                if (alreadySaved) {
                  _saved.remove(_suggestions[index]);
                }else {
                  _saved.add(_suggestions[index]);
                }
              });
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: (){},),
            IconButton(icon: const Icon(Icons.circle_outlined),onPressed: (){},),
            IconButton(icon: const Icon(Icons.crop_square_rounded),onPressed: (){},),
          ],
        ),
      ),
    );
  }
  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          final tiles = _saved.map(
              (pair) {
                return ListTile(
                  title: Text(
                    pair.asPascalCase,
                    style: _biggerFont,
                  ),
                );
              },
            );
            final divided = tiles.isNotEmpty
              ?ListTile.divideTiles(
              context: context,
              tiles: tiles,
            ).toList()
                :<Widget>[];
            return Scaffold(
              appBar: AppBar(
                title: const Text('Palabras Seleccionadas'),
              ),
              body: ListView(children: divided),
            );
        },
      ),
    );
  }
}