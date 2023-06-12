import 'package:flutter/material.dart';

class MenuItem {
  final IconData icon;
  final String link;
  final String subTitle;
  final String title;

  const MenuItem({
    required this.icon,
    required this.link,
    required this.subTitle,
    required this.title
  });
}

const appMenuItems = <MenuItem> [
  MenuItem(
    icon: Icons.smart_button_outlined,
    link: '/buttons',
    subTitle: 'Varios botones',
    title: 'Botones'
  ),
    MenuItem(
    icon: Icons.credit_card,
    link: '/card',
    subTitle: 'Un contenedor estilizado',
    title: 'Tarjetas'
  ),
];