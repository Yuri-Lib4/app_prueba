import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.more_vert)],
        title: const Text('Perfil'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0), // Padding superior
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      height: 350,
                      width: 355,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/mari4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom:
                      1, // Ajusta la posición vertical de la imagen circular
                  child: Container(
                    height: 180, // Ajusta el tamaño de la imagen circular
                    width: 180, // Ajusta el tamaño de la imagen circular
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          Colors.white, // Color de fondo de la imagen circular
                      border: Border.all(
                          color: Colors.red,
                          width: 2), // Borde de la imagen circular
                    ),
                    child: ClipOval(
                      child: Image.asset(
                          'assets/Imagenq.png'), // Reemplaza con la ruta de tu imagen circular
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6.0),
            const Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // Espacio entre columnas
              children: [
                Padding(
                  padding: EdgeInsets.all(35.0), // Margen izquierdo y derecho
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yuri Carrasco, 19',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Diseño y Desarrollo de Software',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(35.0), // Margen izquierdo y derecho
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            '999+',
                            style: TextStyle(fontSize: 16, color: Colors.red),
                          ),
                          Icon(Icons.camera_alt),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // Espacio entre columnas
              children: [
                Text(
                  'Friends: 1M',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  'Followers: 2B',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  'Following: 0',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(
                  top: 35.0), // Padding superior para la fila
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width:
                        100, // Ancho del contenedor (ajusta según tus necesidades)
                    height:
                        100, // Alto del contenedor (ajusta según tus necesidades)
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 154, 148),
                      borderRadius: BorderRadius.circular(
                          60), // Mitad del ancho/alto para un aspecto circular
                    ),
                    child:
                        const Icon(Icons.clear, size: 80), // Tamaño del icono
                  ),
                  Container(
                    width:
                        50, // Ancho del contenedor (ajusta según tus necesidades)
                    height:
                        50, // Alto del contenedor (ajusta según tus necesidades)
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 154, 148),
                      borderRadius: BorderRadius.circular(
                          60), // Mitad del ancho/alto para un aspecto circular
                    ),
                    child: const Icon(Icons.error_outline,
                        size: 30), // Tamaño del icono
                  ),
                  Container(
                    width:
                        100, // Ancho del contenedor (ajusta según tus necesidades)
                    height:
                        100, // Alto del contenedor (ajusta según tus necesidades)
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 154, 148),
                      borderRadius: BorderRadius.circular(
                          60), // Mitad del ancho/alto para un aspecto circular
                    ),
                    child: const Icon(Icons.favorite,
                        size: 80), // Tamaño del icono
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.more_horiz,
                      size: 24), // Icono de los tres puntos suspensivos
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AvatarScreen(),
    );
  }
}
