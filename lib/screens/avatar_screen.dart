import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cosmic Garou'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child:  Text('CG'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://imgs.search.brave.com/5CSiF0yXQncSwosA5XAeKCj9akx5j2LNItmiGrk80Ps/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzc0LzRl/L2MxLzc0NGVjMThj/ZTYzY2NlZTllOGQ3/MjAyMjVkY2UwMGM4/LmpwZw'),
         )
      )
    );
  }
}