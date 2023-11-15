import 'package:flutter/material.dart';

 class AlertScreen extends StatelessWidget {
   
   const AlertScreen({Key? key}): super(key: key);
  
   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(
        child: Text('AlertScreen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      child: const Icon(Icons.cloud_sync_rounded),
      
      ),
   );
}
  
}

