import 'package:flutter/material.dart';
import 'package:my_first_app/themes/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.text_fields_outlined, color: AppTheme.primary,),
            title: Text('Soy un título'),
            subtitle: Text('Aliquip esse eiusmod deserunt Lorem sint sunt reprehenderit reprehenderit est.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right : 5),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text('Cancel'),
                   onPressed: () {},
                  ),
                  
                  TextButton(
                  child: Text('Ok'),
                  onPressed: () {}
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}