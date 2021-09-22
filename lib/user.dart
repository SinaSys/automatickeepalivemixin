import 'package:flutter/material.dart';

class Choice {
 final String title;
 final IconData icon;

 const Choice({required this.title, required this.icon});
 }

 const List<Choice> choices = <Choice>[
 Choice(title: 'primary user info', icon: Icons.person),
 Choice(title: 'secondary user info', icon: Icons.security),
 ];