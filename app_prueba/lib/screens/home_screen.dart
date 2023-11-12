import 'package:app_prueba/router/app_routes.dart';
import 'package:app_prueba/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        elevation: 0,
        //backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder:(context, index){

          final option = AppRoutes.menuOptions[index];

          return ListTile(
            leading: Icon(option.icon),
            title: Text(option.name),
            trailing: Icon(option.icon, color: AppTheme.primary),
            onTap: () {
              //final route = MaterialPageRoute(builder:(context) => const ListView1Screen());
              //Navigator.push(context, route);
              Navigator.pushNamed(context, option.route);
            }
          ); 

        }, 
        separatorBuilder:(context, index) => const Divider(), 
      )
    );
  }
  
}
