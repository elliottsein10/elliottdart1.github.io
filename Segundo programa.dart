void main(){
  //Ejemplos de final y const
  const x=9;
  final y;
  
  print('El valor de la constante x es: $x');
  
  
  /* Al ser final, ya no se puede asignar su valor despuès de
  ser declarada */ 
  y=15;
  
  print('El valor de la constante y es: $y');
  
  /* Al ser constante, ya no se le puede cambiar su valor 
  una vez que ya fue asginado */ 
  y=-3;
  
  /* x, al ser const, no se puede cambiar su valor 
  x=12; 
  */
}