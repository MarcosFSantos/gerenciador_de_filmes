import 'package:flutter/material.dart';

class ListaDeFilmes extends StatefulWidget {

  @override
  State<ListaDeFilmes> createState() => _ListaDeFilmesState();
}

class _ListaDeFilmesState extends State<ListaDeFilmes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Filmes"),
        actions: <Widget>[
      IconButton(
      icon: const Icon(Icons.info),
      tooltip: 'Equipe',
      onPressed: () {
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text("Equipe:"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("Marcos Vinícius"),
                Text("Matheus Lucas"),
                Text("Gabriel Antônio"),
                Text("Júlio Cezar")
              ]
            ),
            actions: [TextButton(
                onPressed: (){Navigator.of(context).pop();},
                child: Text("Ok"))],
          );
        });
      },)],
      ),
      body: Container(),
    );
  }
}
