
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: const [
        CustomCardType1(),
        SizedBox(height: 10,),
        CustomCardType2(),
        SizedBox(height: 10,),
        CustomCardType1(),
        SizedBox(height: 10,),
        CustomCardType2(),
        SizedBox(height: 10,),
        CustomCardType1(),
        SizedBox(height: 10,),
        CustomCardType2(),
        SizedBox(height: 10,),
        CustomCardType3(imageURL: 'https://cdn.culturagenial.com/es/imagenes/peliculas-para-ver-en-familia-netflix-og.jpg',),
         SizedBox(height: 10,),
        CustomCardType3(imageURL: 'https://cdn.culturagenial.com/es/imagenes/peliculas-para-ver-en-familia-netflix-og.jpg', descripcion: 'nose',)
      ],
      )
    );
  }
  
}

