import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import '../contenido/my_app.dart';

void main(){
  debugPaintSizeEnabled = false; //set to true for visual layout
  runApp(const MyApp());
}