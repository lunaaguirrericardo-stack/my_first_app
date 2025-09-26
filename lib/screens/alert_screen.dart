import 'package:flutter/material.dart';


class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});

  void displayDialog(BuildContext context){

    showDialog(
     barrierDismissible: false,
     context: context,
     builder: (context) {

      return AlertDialog(
        elevation: 5,
        title: Text('Titulo'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Este es el contenido de la alerta'),
            SizedBox(height: 10),
            FlutterLogo(size: 100,)
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
             child: Text('Cancelar'))
        ],
      );

      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => displayDialog(context),
          child: const Text('Mostrar Alerta', style: TextStyle(fontSize: 20),)
          )
      ),

        floatingActionButton:FloatingActionButton(
          child: const Icon(Icons.close),
        //Si deaseamos desabilitar el boton mandar un valor nulo a la función
          onPressed: (){ 
            Navigator.pop(context);
          }
          ),
    );
  }
}