import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        //Agregamos padding (margenes)
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardtype2(imageUrl: 'https://imgs.search.brave.com/XbF7WFHgH97i7NaE306xBsQHvgwfhJKSh7nezHltBu8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXQuY29t/L3cvZnVsbC80LzAv/MC8xMTY1NDkzLTI1/NjB4MTYwMC1kZXNr/dG9wLWhkLWxhbmRz/Y2FwZS13YWxscGFw/ZXItcGhvdG8uanBn',),
          SizedBox(height: 20),
          CustomCardtype2(imageUrl: 'https://imgs.search.brave.com/rReWix05h9eLtaqmzA6uduKNmtunVOYMg0IdCS47zkg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvaGQt/bGFuZHNjYXBlLXBp/bmUtdHJlZXMtYW5k/LXJpdmVyLW12MWdz/NnVvZDNjOHlxYW0u/anBn'),
          SizedBox(height: 20),
          CustomCardtype2(imageUrl: 'https://imgs.search.brave.com/BT90_8wF7k7yIxbYMw5k0XLfGICFHbbuLlC6xJHadYI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXQuY29t/L3cvZnVsbC81Lzkv/NS8xMTY1MzM3LTE5/MjB4MTA4MC1kZXNr/dG9wLTEwODBwLWxh/bmRzY2FwZS1iYWNr/Z3JvdW5kLWltYWdl/LmpwZw'),
          SizedBox(height: 20),
          CustomCardtype2(imageUrl: 'https://imgs.search.brave.com/YltpMgxGMjOcVHOba_DJ3L_g9Rm5fPbove0epDy-iwI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDQ4NTUw/NTQuanBn'),

        ],
      )
    );
  }
}

