import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 10,
      child: Column(
        children: [
          // Image(
          //   image: NetworkImage(
          //       "https://cdn.forbes.com.mx/2021/09/Jumanji-hbo-max-640x360.jpg"),
          // ),
          const FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://cdn.forbes.com.mx/2021/09/Jumanji-hbo-max-640x360.jpg'),
              width: double.infinity,
              height: 250,
              fit:BoxFit.cover
                  ),
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: const Text('Peliculas en cartelera'),

              ),

        ],
      ),
    );
  }
}
