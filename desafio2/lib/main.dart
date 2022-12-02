import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/shared/app_module.dart';
import 'package:flutter_trade2/app/shared/app_widget.dart';

void main() => runApp(ModularApp(module: AppModule(), child: AppWidget()));
