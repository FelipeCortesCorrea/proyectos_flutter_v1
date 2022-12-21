import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const valueKey = ValueKey('ItemDetailScreen');

  final String product;

  const ItemDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Producto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              product,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Text('Detalles de $product')
        ],
      ),
    );
  }
}
