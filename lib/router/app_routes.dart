import 'package:flutter/material.dart';
import 'package:my_first_app/models/models.dart';
import '../screens/screens.dart';

//Se agrega un underscore al inicio de la clase si se desea hacer privado
class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    
    MenuOption(route: 'listview1', name: 'Listview 1', screen: Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'Listview 2', screen: Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alertas', screen: AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', screen: CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Circle Avatar', screen: AvatarScreen()),
    MenuOption(route: 'animated', name: 'Animated Container', screen: AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: InputsScreen(), icon: Icons.input_rounded),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' :  (BuildContext context) => HomeScreen()});
   
    //Leemos con un ciclo for in los elementos de la lista superior de rutas
      for (final option in menuOptions){
        appRoutes.addAll({option.route :  (BuildContext context) => option.screen});
    }
   
    return appRoutes;

  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //       'home': (BuildContext context) => HomeScreen(),
  //       'listview1': (BuildContext context) => Listview1Screen(),
  //       'listview2': (BuildContext context) => Listview2Screen(),
  //       'alert': (BuildContext context) => AlertScreen(),
  //       'card': (BuildContext context) => CardScreen(),
  //     };

        static Route<dynamic> onGenerateRoute ( RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );

    }
} 