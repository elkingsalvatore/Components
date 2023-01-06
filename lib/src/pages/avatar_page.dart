// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://scontent.ftgu1-1.fna.fbcdn.net/v/t39.30808-6/305305616_3336282153317786_4282829691782451184_n.jpg?stp=cp6_dst-jpg&_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LqkMcnTEF4wAX_NUT95&_nc_ht=scontent.ftgu1-1.fna&oh=00_AfAdXJjv2A1cTTgzyT-RrSa5f9pmDyG3qklm027VxUljqg&oe=63BD3459'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('EG'),
              backgroundColor: Colors.brown,
          ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://images.pexels.com/photos/209807/pexels-photo-209807.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration( milliseconds: 300),
        ),
      ),
    );
  }
}