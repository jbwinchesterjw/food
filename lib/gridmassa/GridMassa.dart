import 'package:flutter/material.dart';

class GridMassa extends StatelessWidget {
  const GridMassa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid Massa'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back), // Ícone de seta para voltar
            onPressed: () {
              Navigator.pop(context); // Ao pressionar a seta, volta à tela anterior
            },
          ),
        ),
        body: GridWidget(),
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Número de colunas
        crossAxisSpacing: 8.0, // Espaçamento horizontal entre os itens
        mainAxisSpacing: 8.0, // Espaçamento vertical entre os itens
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: Center(
            child: Text(items[index]),
          ),
        );
      },
    );
  }
}
