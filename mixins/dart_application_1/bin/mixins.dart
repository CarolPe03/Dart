 import 'dart:ffi';

void main(List<String> arguments) {
  //Instanciando y usando un obejro de la clase gato
  Gato garfield= Gato();
  Paloma paola = Paloma();
  garfield.yoSoy(); //Funcion de la clase gato
  garfield.infoAnimal(); //Herencia animal
  garfield.infoMamifero(); //Mamifero (herencia)
  garfield.caminar(); //Clase caminante mixin

  paola.yoSoy(); //Funcion de la clase gato
  paola.infoAnimal(); //Herencia animal
  paola.infoAve(); //Mamifero (herencia)
  paola.volar(); //Clase caminante mixin
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
  void caminar() => print('Puedo caminar');
  }
  class Nadador{
  void nadador() => print("Puedo nadar");
  }
  class Volador{
  void volar() => print ('Puedo volar');
  }





  //Creacion de las clases de los tipos especisdficos de animales
  class Gato extends Mamifero with Caminante {
    @override
    void infoAnimal(){
      print('Soy un animal');
    }
    @override
    void infoMamifero(){
      print('Soy un manifero');
    }
    //Metodo de la clase gato
    void yoSoy() => print ('Soy un Michi');
  }
  class Paloma extends Ave with Caminante, Volador{
    @override
    void infoAnimal(){
      print('Yo soy un animal');
    }
    @override void infoAve() {
    print("Soy una ave");
  }
    //Metodo de la clase paloma 
    void yoSoy() => print('Soy una paloma');
  }

