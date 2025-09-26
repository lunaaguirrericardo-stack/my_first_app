import 'package:flutter/material.dart';
import 'package:my_first_app/themes/app_theme.dart';

class Listview2Screen extends StatelessWidget {

  final options = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final fantasy'];
   
  const Listview2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile( 
            title: Text(options[index]),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary),
            onTap: (){
              final game = options[index];
              (game);
            },
           ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: options.length,
        )
    );
  } 
} 
