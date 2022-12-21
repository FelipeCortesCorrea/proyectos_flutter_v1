import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final int xde;
  final int cont;
  const MyTile({Key? key, required this.xde, required this.cont}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:  Container(
        height: 78,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
            image:DecorationImage(image:AssetImage('images/pic${xde + 1}.jpg'),alignment: Alignment.centerLeft),
          color: Colors.grey[200]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child:  const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
            Center(
              child: Column(
                children: [
                  if(cont == 0)...[
                    const Text('Balon Champions League 2022',style: TextStyle(fontSize: 15),
                    ),
                  ]else if (cont == 1)...[
                    const Text('Balon Premier League 2022', style: TextStyle(fontSize: 15),
                    ),
                  ]else if (cont == 2)...[
                    const Text('Balon Mundial Qatar 2022', style: TextStyle(fontSize: 15),
                    ),
                  ]else if (cont == 3)...[
                    const Text('Balon Mundial Qatar 2022', style: TextStyle(fontSize: 15),
                    ),
                  ]else if (cont == 4)...[
                    const Text('Balón Baloncesto Basketball ', style: TextStyle(fontSize: 15),
                    ),
                  ]else if (cont == 5)...[
                    const Text('Balon Puma LALIGA 1 Orbita ', style: TextStyle(fontSize: 15),
                    ),
                  ]else if (cont == 6)...[
                    const Text('Balón Baloncesto Basketball', style: TextStyle(fontSize: 15),
                    ),
                  ]else if (cont == 7)...[
                    const Text('Balon Voleibol Cuero ', style: TextStyle(fontSize: 15),
                    ),
                  ]else if (cont == 8)...[
                    const Text('Balon Baloncesto Everyday ', style: TextStyle(fontSize: 15),
                    ),
                  ]else if (cont == 9)...[
                    const Text('Balon Voleibol Golty NXV105', style: TextStyle(fontSize: 15),
                    ),
                  ]
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}