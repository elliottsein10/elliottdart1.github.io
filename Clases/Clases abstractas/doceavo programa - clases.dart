void main(List<String> arguments){
  //Paso de parametros en el contructor Computadora
  var unaLaptop = new Computadora(ram: 32, cpu: 'Intel core i9',
                                  marca: 'Allienware',); //new es opcional
  print('Informacion de la laptop que te venden en Internet: $unaLaptop');
  
  //stdout.write('¿Esta computadora es adecuada para la materia DMM?:');
  
  //String? respuesta=stdin.readLineSync();
  String respuesta = 'si';
  if(respuesta != null) {
    if(respuesta.contains('si')){
      unaLaptop.configurarAdecuada = true; //Enviar parametros, se igualan
    }else{
      unaLaptop.configurarAdecuada = false;
    }
  }else{
    print('No se puede saber si la PC es adecuada porque se recibio null');
  }
  
  print('laptop1 es adecuada para tu materia: ${unaLaptop.esAdecuada}');
  unaLaptop.marca='Lenovo';
  unaLaptop.cpu='Celeron';
  unaLaptop.ram=4;
  print('Informacion de la laptop que te llego a cada: $unaLaptop');
}

class Computadora{
  //Campos de clase o variables
  String? marca;
  String? cpu;
  int? ram;
  bool adecuada=false;
  
  //Constructor
  //Paso de parametros
  /*Computadora(String m, String c, int r){
    this.marca = m;
    this.cpu = c;
    this.ram = r;
  }*/
  
  //Otra manera màs corta de crear un constructor con parametros nombrados, es decir,
  //con el orden que sea
  //Parametros nombrados se ponen entre corchetes
  Computadora({this.marca, this.cpu, this.ram});
  
  @override
  String toString(){
    //No se pone this porque las campos de clase no son privadas, sino pùblicas
    return 'Marca: $marca, CPU: $cpu, RAM: $ram, es adecuada para DMM: $adecuada';
  }
  
  //getter de la variable adecuada
  bool get esAdecuada{
    return adecuada;
  }
  
  //setter de la variable adecuada
  set configurarAdecuada(bool valor){
    adecuada = valor;
  }
}