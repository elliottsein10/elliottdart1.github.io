import 'package:flutter/material.dart'; 

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  final TextStyle estiloTexto = const TextStyle(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context){
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlantLink'),
        centerTitle: true,
        elevation: 5.2,
        backgroundColor: Color.fromARGB(255, 14, 3, 85),
      ),
      backgroundColor: Color.fromARGB(255, 141, 155, 236),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Número de taps:', 
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
          print('Tocaste el botón, valor del contador: $contador'); 
          contador++;
        },
        backgroundColor: const Color.fromARGB(255, 3, 21, 52),
        foregroundColor: const Color.fromARGB(255, 234, 184, 5),
        child: const Icon(Icons.add),
      ),
    );
  }
}