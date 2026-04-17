import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
Pokemon({super.key});

  final List<String> listPokemon = [
    "Bullbasur",
    "Charmender",
    "Pikhacu",
    "Pokeball",
    "Zubat",
  ];

  @override
  Widget build(BuildContext context) {

    print("print pokemon ${listPokemon[1]}");

    listPokemon.forEach((element) {
      if(element == "Pikhacu"){
        print("pika pika");
      }else{
        print("oke");
      }

    },);


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
              listPokemon[index],
              style: TextStyle(fontSize: 20),
            ),
          );
        },
      ),

    );
  }
}
