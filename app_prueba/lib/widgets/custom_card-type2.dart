import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 10,
      child: Column(
        children: [
          Image(
            image: NetworkImage("https://cdn.forbes.com.mx/2021/09/Jumanji-hbo-max-640x360.jpg"),
          )
        ],
      ),
       );
  }
}
