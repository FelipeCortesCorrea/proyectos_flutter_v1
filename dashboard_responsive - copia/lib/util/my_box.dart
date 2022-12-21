import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final int xde;
  const MyBox({Key? key, required this.xde}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child:Container(
        height: 78,
        decoration: BoxDecoration(
          image:DecorationImage(image:AssetImage('images/pic${xde + 1}.jpg'),fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200]
        ),
      ),
    );
  }
}