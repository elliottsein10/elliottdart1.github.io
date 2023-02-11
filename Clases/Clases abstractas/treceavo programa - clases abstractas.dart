void main(List<String> arguments){
  final unCuadrado = Cuadrado();
  print('El area de unCuadrado es: ${unCuadrado.area}');
}

abstract class FiguraGeometrica {
  double? area;
  
  double calcularArea();
}

class Cuadrado implements FiguraGeometrica{
  //Cuadrado hereda de FiguraGeometrica
  // y debe implementar todo lo definido en la clase abstracta
  @override
  double? area;
  
@override //Se vuelve a declarar una variable que ya se heredo, se esta sobreescribiendo
  double calcularArea(){
    double lado = 12.5;
    return lado * lado;
  }
}