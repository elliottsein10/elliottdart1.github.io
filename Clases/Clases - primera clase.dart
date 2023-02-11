void main(List<String> arguments){
  //Paso de parametros en el contructor Computadora
  var unaLaptop = new Computadora(ram: 32, cpu: 'Intel core i9',
                                  marca: 'Allienware',); //new es opcional
  print('Informacion de la laptop que te venden en Internet: $unaLaptop');
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
    return 'Marca: $marca, CPU: $cpu, RAM: $ram';
  }
}