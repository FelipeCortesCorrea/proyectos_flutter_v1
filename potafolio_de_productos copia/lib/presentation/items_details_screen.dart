import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const valueKey = ValueKey('ItemDetailScreen');

  final String product;
  final int xde;
  final int cont;

  const ItemDetailsScreen({Key? key, required this.product, required this.xde, required this.cont}) : super(key: key);

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
            child:Column(
          children: [
            if(cont == 0)...[
              const Text('Balon Champions League 2022', textAlign: TextAlign.center, style: TextStyle(fontSize: 70)
              ),
              ]else if (cont == 1)...[
                const Text('Balon Premier League 2022',textAlign: TextAlign.center, style: TextStyle(fontSize: 60),
                ),
            ]else if (cont == 2)...[
              const Text('Balon Mundial Qatar 2022',textAlign: TextAlign.center, style: TextStyle(fontSize: 60),
              ),
            ]else if (cont == 3)...[
              const Text('Balon Mundial Qatar 2022',textAlign: TextAlign.center, style: TextStyle(fontSize: 60),
              ),
            ]else if (cont == 4)...[
              const Text('Balón Baloncesto Basketball Nba Authentic',textAlign: TextAlign.center, style: TextStyle(fontSize: 60),
              ),
            ]else if (cont == 5)...[
              const Text('Balon Puma LALIGA 1 Orbita FIFA QUALITY PRO',textAlign: TextAlign.center, style: TextStyle(fontSize: 60),
              ),
            ]else if (cont == 6)...[
              const Text('Balón Baloncesto Basketball Nba Authentic #5',textAlign: TextAlign.center, style: TextStyle(fontSize: 60),
              ),
            ]else if (cont == 7)...[
              const Text('Balon Voleibol Cuero Composite Profesional',textAlign: TextAlign.center, style: TextStyle(fontSize: 60),
              ),
            ]else if (cont == 8)...[
              const Text('Balon Baloncesto Everyday All Court 8p-negro',textAlign: TextAlign.center, style: TextStyle(fontSize: 60),
              ),
            ]else if (cont == 9)...[
              const Text('Balon Voleibol Golty NXV105',textAlign: TextAlign.center, style: TextStyle(fontSize: 60),
              ),
          ],
              ],
            ),
          ),
          Image(image:AssetImage('images/pic${xde + 1}.jpg'),alignment: Alignment.center,width: 650,height: 650,),
          Text('Balones 100% Originales', style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
