import 'package:flutter/material.dart';

class AdminSettings {
  bool isExpanded;
  final String header;
  final Widget body;
  final Icon icon;

  AdminSettings(this.isExpanded, this.header, this.body, this.icon);
}