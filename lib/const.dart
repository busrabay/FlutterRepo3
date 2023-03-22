import 'package:flutter/material.dart';

class NavItem {
  IconData icon;

  NavItem(this.icon);
}

class Const {
  static final navItems = <NavItem>[
    NavItem(Icons.home),
    NavItem(Icons.accessibility_new_sharp),
    NavItem(Icons.zoom_out_map_rounded),
    NavItem(Icons.workspace_premium_rounded),
    NavItem(Icons.message),
  ];
}
