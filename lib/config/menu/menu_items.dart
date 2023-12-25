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
    link: '/cards',
    subTitle: 'Un contenedor estilizado',
    title: 'Tarjetas'
  ),
  MenuItem(
    icon: Icons.refresh_rounded,
    link: '/progress',
    subTitle: 'Generales y controlados',
    title: 'Progress Indicators'
  ),
  MenuItem(
    icon: Icons.info_outline,
    link: '/snackbars',
    subTitle: 'alerts and dialogs',
    title: 'Snackbars and Dialogs'
  ),
];