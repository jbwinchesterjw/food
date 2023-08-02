import 'package:flutter/material.dart';
import 'package:toppizza/drawer/DrawerWidget.dart';
import 'package:toppizza/gridburger/GridBurger.dart';
import 'package:toppizza/gridfritas/GridFritas.dart';
import 'package:toppizza/gridmassa/GridMassa.dart';
import 'package:toppizza/gridpizza/GridPizza.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Menu Lateral',
            style: TextStyle(color: Colors.deepOrange),
          ),
        ),
      ),
      drawer: const DrawerWidget(),
      body: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage("asserts/images/fast.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity, // Faz o container ocupar a largura máxima
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/fastfood.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black.withOpacity(0.5), // Adiciona uma cor de sobreposição para tornar o texto mais legível
                ),
                child: const Center(
                  child: Text(
                    "Nosso menu",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      fixedSize: const Size(30, 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Define o raio do arredondamento
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const GridBurger(),
                        ),
                      );
                    },
                    child: const Text(
                      "Burger",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      fixedSize: const Size(30, 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Define o raio do arredondamento
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const GridPizza(),
                        ),
                      );
                    },
                    child: const Text(
                      "Pizza",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      fixedSize: const Size(30, 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Define o raio do arredondamento
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const GridMassa(),
                        ),
                      );
                    },
                    child: const Text(
                      "Massa",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      fixedSize: const Size(30, 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Define o raio do arredondamento
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const GridFritas(),
                        ),
                      );
                    },
                    child: const Text(
                      "Fritas",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
               Row(children: [
                Column(
                  children: [

                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
