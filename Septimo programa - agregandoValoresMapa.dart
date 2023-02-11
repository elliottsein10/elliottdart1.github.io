void main(List<String> arguments){
  /*stdout.write('Por favor, escribe tu nombre: ');
  String? name=stdin.readLineSync();
  print('Bienvendida $name al mundo de Dart');*/
  
  //LabThings es una lista dynamic
  var labThings=[
    'chairs', 
    'tables', 
    'PC', 
    'laptops',
    'code', 
    'software', 
    'mouse', 
    'cable'
  ];
  
  //Imprimiendo con print
  print('Imprimiendo el contenio de LabThings con print: $labThings');
  
  //Imprimiendo con for
  print('Imprimiendo el contenido de labThings con for: ');
  for(var e in labThings){
    print(e);
  }
  
  //Imprimiendo con for mejorado
  print('Imprimiendo el contenido con un for mejorado');
  var i=1;
  var mapLabThings={
    for(var e in labThings)
      i++: e
    };
  print('Contenido del mapa: $mapLabThings');
  
  //Otra manera de imprimir resultados
  i=1;
  var cosasCon5Letras={
    for(var e in labThings){
      if(e.length >= 5 && e.length <= 6)
      i++: e
    }
  };
  print('Cosas del lab con 5 o 6 letras: $cosasCon5Letras');
  
  //Agregando valores a un mapa
  cosasCon5Letras[5]='control';
  print('Cosas del lab con 5 o 6 letras: $cosasCon5Letras');
  //Agregando solo si no esta en el mapa y recuperar ese valor
  var valor1=cosasCon5Letras.putIfAbsent(6, () => 'virus');
  print('Valor obtenido del mapa: $valor1');
  print('Actualizacion de cosas del lab con 5 o 6 letras: $cosasCon5Letras');
 }