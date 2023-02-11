void main(List<String> arguments){
  //Instanciando y usando un objeto de la clase gato
  Gato garfield = Gato();
  garfield.yoSoy(); // funcion de la clase Gato
  garfield.infoAnimal(); // funcion de la clase Animal (herencia)
  garfield.infoMamifero(); // funcion de la clase Mamifero (herencia)
  garfield.caminar(); // funcion de la clase Caminante (mixin, este se implementa con la palabra reservada with)

  print('---------------------------------------------------');

  Paloma ave = Paloma();
  ave.yoSoy(); // funcion de la clase Paloma
  ave.infoAnimal(); // funcion de la clase Animal (herencia)
  ave.infoAve(); // funcion de la clase Ave (herencia)
  ave.volar(); // funcion de la clase Volador (mixin, este se implementa con la palabra reservada with) 
  ave.caminar(); // funcion de la clase Caminante (mixin, este se implementa con la palabra reservada with)

  print('---------------------------------------------------');

  Delfin delfin = Delfin();
  delfin.yoSoy(); // funcion de la clase Paloma
  delfin.infoAnimal(); // funcion de la clase Animal (herencia)
  delfin.infoPez(); // funcion de la clase Delfin (herencia)
  delfin.nadar(); // funcion de la clase Nadador (mixin, este se implementa con la palabra reservada with)

  print('---------------------------------------------------');

  Murcielago murcielago = Murcielago();
  murcielago.yoSoy(); // funcion de la clase Paloma
  murcielago.infoAnimal(); // funcion de la clase Animal (herencia)
  murcielago.infoMamifero(); // funcion de la clase Murcielago (herencia)
  murcielago.volar(); // funcion de la clase Volador (mixin, este se implementa con la palabra reservada with)
  murcielago.caminar(); // funcion de la clase Caminante (mixin, este se implementa con la palabra reservada with)

}

  abstract class Animal{
    void infoAnimal();
  }

  abstract class Mamifero extends Animal{
    void infoMamifero();
  }

  abstract class Ave extends Animal{
    void infoAve();
  }

  abstract class Pez extends Animal{
    void infoPez();
  }

  class Caminante{
    void caminar() => print('Puedo caminar!!');
  }

  class Nadador{
    void nadar() => print('Puedo nadar!!');
  }

  class Volador{
    void volar() => print('Puedo volar!!');
  }

  //Creacion de las clases de los tipos especificos de animales
  class Gato extends Mamifero with Caminante{
    //Mètodos heredados de Animal y Mamifero
    @override
    void infoAnimal(){
      print('Soy un animal');
    }

    @override
    void infoMamifero(){
      print('Soy un Mamifero');
    }

    //Metodo de la clase Gato
    void yoSoy() => print('Soy un Michi');

  }

  class Delfin extends Pez with Nadador{
    //Mètodos heredados de Animal y Mamifero
    @override
    void infoAnimal(){
      print('Son animales de naturaleza muy gregaria');
    }

    @override
    void infoPez(){
      print('Soy un mamífero acuático');
    }

    //Metodo de la clase Delfín
    void yoSoy() => print('Soy un Delfín');

  }

  class Murcielago extends Mamifero with Volador, Caminante{
    //Mètodos heredados de Animal y Mamifero
    @override
    void infoAnimal(){
      print('Soy un animal');
    }

    @override
    void infoMamifero(){
      print('Soy un Mamifero');
    }

    //Metodo de la clase Murcielago
    void yoSoy() => print('Soy un Murcielago');

  }

  class Paloma extends Ave with Caminante, Volador{
    @override
    void infoAnimal(){
      print('Soy un animal');
    }

    @override
    void infoAve(){
      print('Soy una Ave');
    }

    //Metodo de la clase Paloma
    void yoSoy() => print('Soy una Paloma');
  }