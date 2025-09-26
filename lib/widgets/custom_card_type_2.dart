import 'package:flutter/material.dart';

class CustomCardtype2 extends StatelessWidget {
  const CustomCardtype2({super.key, required this.imageUrl, this.name});

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      //fuerza a los child a tener los margenes del widget padre
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      child: Column(
        children: [
          /*Insertar imagen en columna mediante url
          Image(
            image: NetworkImage('https://imgs.search.brave.com/XbF7WFHgH97i7NaE306xBsQHvgwfhJKSh7nezHltBu8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXQuY29t/L3cvZnVsbC80LzAv/MC8xMTY1NDkzLTI1/NjB4MTYwMC1kZXNr/dG9wLWhkLWxhbmRz/Y2FwZS13YWxscGFw/ZXItcGhvdG8uanBn')
            )*/

          //Imagen con pre-pantalla de carga
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
            ),

            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ?? 'No title')
              ),

        ],
      ),
    );
  }
}