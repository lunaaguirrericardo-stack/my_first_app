import 'package:flutter/material.dart';
import 'package:my_first_app/router/app_routes.dart';
import 'package:my_first_app/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

   final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: Text('Componentes de Flutter'),
      ),
         body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(menuOptions[index].name),
            leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
            onTap: () {

            //final route = MaterialPageRoute(
            //builder: (context) => Listview1Screen()
            //);  
            //Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[index].route);

            },
          ),
          separatorBuilder: (_ , __) => Divider(),
          itemCount: menuOptions.length
          )
    );
  }
}
