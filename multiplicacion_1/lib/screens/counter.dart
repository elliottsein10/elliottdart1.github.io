import 'package:flutter/material.dart'; 

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState(); 
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  int contador1 = 0;
  int mult = 0;
  final TextStyle estiloTexto = const TextStyle(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  
  void multi(){
    mult = contador * contador1;
    setState(() {});
  }

  void incrementar(){
    contador++;
    setState(() {});
  }

  void decrementar(){
    contador--;
    setState(() {});
  }

  void reiniciar(){
    contador = 0;
    setState(() {});
  }

  void incrementar1(){
    contador1++;
    setState(() {});
  }

  void decrementar1(){
    contador1--;
    setState(() {});
  }

  void reiniciar1(){
    contador1 = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido a multiplicador básico'),
        centerTitle: true,
        elevation: 5.2,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
       
      ),
      backgroundColor: Color.fromARGB(255, 57, 83, 230),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Multiplicando:', 
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                FloatingActionButton(
                onPressed: () => decrementar(),
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                foregroundColor: const Color.fromARGB(255, 234, 184, 5),
                child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () => reiniciar(),
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  foregroundColor: const Color.fromARGB(255, 234, 184, 5),
                  child: const Icon(Icons.restart_alt),
                ),
                FloatingActionButton(
                onPressed: () => incrementar(),
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                foregroundColor: const Color.fromARGB(255, 234, 184, 5),
                child: const Icon(Icons.add),
                ),
              ],
            ),

            const Text(
              'Multiplicador:', 
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '$contador1',
              style: estiloTexto,
            ),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                FloatingActionButton(
                onPressed: () => decrementar1(),
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                foregroundColor: const Color.fromARGB(255, 234, 184, 5),
                child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () => reiniciar1(),
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  foregroundColor: const Color.fromARGB(255, 234, 184, 5),
                  child: const Icon(Icons.restart_alt),
                ),
                FloatingActionButton(
                onPressed: () => incrementar1(),
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                foregroundColor: const Color.fromARGB(255, 234, 184, 5),
                child: const Icon(Icons.add),
                ),
              ],
            ),
           const Text(
              'Resultado:', 
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '$mult',
              style: estiloTexto,
            ),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                FloatingActionButton(
                onPressed: () => multi(),
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                foregroundColor: const Color.fromARGB(255, 234, 184, 5),
                child: const Icon(Icons.get_app),
                ),
              ],
            ),
            
          ],
          
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floatingActionButton: CustomFloatingActionButton(decrease: decrementar, increase: incrementar, reset: reiniciar,)
    );
  }
}

/*class CustomFloatingActionButton extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  const CustomFloatingActionButton({
    super.key, 
    required this.increase, 
    required this.decrease, 
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decrease(),
          backgroundColor: const Color.fromARGB(255, 3, 21, 52),
          foregroundColor: const Color.fromARGB(255, 234, 184, 5),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          onPressed: () => reset(),
          backgroundColor: const Color.fromARGB(255, 3, 21, 52),
          foregroundColor: const Color.fromARGB(255, 234, 184, 5),
          child: const Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          onPressed: () => increase(),
          backgroundColor: const Color.fromARGB(255, 3, 21, 52),
          foregroundColor: const Color.fromARGB(255, 234, 184, 5),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}*/