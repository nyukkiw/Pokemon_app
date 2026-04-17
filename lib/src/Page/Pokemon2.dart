import 'package:flutter/material.dart';
import 'package:pokemon_android/src/Data/Pokemon_model.dart';

class Pokemon2 extends StatelessWidget {
  Pokemon2({super.key});


  final List<PokemonModel> listPokemon = [
    PokemonModel("bullbasaur", "Images/bullbasaur.png"),
    PokemonModel("charmander", "Images/charmander.png"),
    PokemonModel("pikhacu", "Images/pikhacu.png"),
    PokemonModel("pokeball", "Images/pokeball.png"),
    PokemonModel("zubat", "Images/zubat.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My pokemon app"),
      ),
      // body: Container(
      //   child: Image.asset("Images/zubat.png")
      // ),
      body: ListView.builder(
        itemCount: listPokemon.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Text(
              listPokemon[index].name,
              style: TextStyle(fontSize: 20),
            ),
          );
        },
      ),

    );
  }
}
