import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {
  final String imageURL;
  final String? descripcion;


  const CustomCardType3({
    super.key, required this.imageURL, this.descripcion
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
          FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(imageURL),
              width: double.infinity,
              height: 250,
              fit:BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 3000) ,
                  ),
              if ( descripcion != null)
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(descripcion ?? '<sin datos>'),

              ),

        ],
      ),
    );
  }
}
