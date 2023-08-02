import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black87,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("asserts/images/pizza-show.jpg"),
                fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Fast Food',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home', style: TextStyle(color: Colors.deepOrange)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            IconTheme(
              data: const IconThemeData(color: Colors.deepOrange), // Defina a cor dos ícones aqui (branco)
              child: ListTile(
                leading: const Icon(Icons.book),
                title: const Text('Menu', style: TextStyle(color: Colors.deepOrange)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            // Adicione mais itens de menu aqui, se necessário
          ],
        ),
      ),
    );
  }
}
