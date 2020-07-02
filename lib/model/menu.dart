import 'package:flutter/material.dart';

class Menu {
  String title;
  IconData icon;

  Menu({this.title, this.icon});
}

List<Menu> menuItems = [
  Menu(title: 'Dashboard', icon: Icons.dashboard),
  Menu(title: 'Requests', icon: Icons.notification_important),
  Menu(title: 'Logout', icon: Icons.arrow_back_ios),
];
