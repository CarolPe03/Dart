void main(List<String> arguments) {
  //Instanciando y usando un obejto de la clase gato
  Gato garfield = Gato();
  garfield.yoSoy(); //Funcion de la clase gato
  garfield.infoAnimal(); //Herencia animal
  garfield.infoMamifero(); //Mamifero (herencia)
  garfield.caminar(); //Clase caminante mixin

  Murcielago murci = Murcielago();
  murci.yoSoy();
  murci.infoAnimal();
  murci.infoMamifero();
  murci.caminar();
  murci.volar();

  Delfin delfi = Delfin();
  delfi.yoSoy();
  delfi.infoAnimal();
  delfi.infoMamifero();
  delfi.nadador();

  Paloma paola = Paloma();
  paola.yoSoy(); //Funcion de la clase
  paola.infoAnimal(); //Herencia animal
  paola.infoAve(); //Mamifero (herencia)
  paola.volar(); //Clase caminante mixin

  Pato donald = Pato();
  donald.yoSoy();
  donald.infoAnimal();
  donald.infoAve();
  donald.caminar();
  donald.volar();
  donald.nadador();

  Tiburon tiburoncin = Tiburon();
  tiburoncin.yoSoy();
  tiburoncin.infoAnimal();
  tiburoncin.infoPez();
  tiburoncin.nadador();

  PezVolador pez = PezVolador();
  pez.yoSoy();
  pez.infoAnimal();
  pez.infoPez();
  pez.nadador();
  pez.volar();
}

abstract class Animal {
  void infoAnimal();
}

abstract class Mamifero extends Animal {
  void infoMamifero();
}

abstract class Ave extends Animal {
  void infoAve();
}

abstract class Pez extends Animal {
  void infoPez();
}

class Caminante {
  void caminar() => print('Puedo caminar');
}

class Nadador {
  void nadador() => print("Puedo nadar");
}

class Volador {
  void volar() => print('Puedo volar');
}

//Creacion de las clases de los tipos especisdficos de animales
class Gato extends Mamifero with Caminante {
  @override
  void infoAnimal() {
    print('******************************');
    print('Soy un animal');
  }

  @override
  void infoMamifero() {
    print('Soy un mamifero');
  }

  @override
  void caminar();
  //Metodo de la clase gato
  void yoSoy() => print('Soy un Gato:');
}

class Murcielago extends Mamifero with Caminante, Volador {
  @override
  void infoAnimal() {
    print('******************************');
    print('Soy un animal');
  }

  @override
  void infoMamifero() {
    print('Soy un mamifero');
  }

  @override
  void caminar();
  void volar();
  //Metodo de la clase gato
  void yoSoy() => print('Soy un Mucielago:');
}

class Delfin extends Mamifero with Caminante, Nadador {
  @override
  void infoAnimal() {
    print('******************************');
    print('Soy un animal');
  }

  @override
  void infoMamifero() {
    print('Soy un mamifero');
  }

  @override
  void nadador();
  void yoSoy() => print('Soy un Delfin:');
}

class Paloma extends Ave with Caminante, Volador {
  @override
  void infoAnimal() {
    print('******************************');
    print('Yo soy un animal');
  }

  @override
  void infoAve() {
    print("Soy una ave");
  }

  //Metodo de la clase paloma
  void yoSoy() => print('Soy una paloma:');
}

class Pato extends Ave with Caminante, Volador, Nadador {
  @override
  void infoAnimal() {
    print('******************************');
    print('Yo soy un animal');
  }

  @override
  void infoAve() {
    print("Soy una ave");
  }

  void caminar();
  void nadador();
  void volar();
  void yoSoy() => print('Soy un pato:');
}

class Tiburon extends Pez with Nadador {
  @override
  void infoAnimal() {
    print('******************************');
    print('Yo soy un animal');
  }

  @override
  void infoPez() {
    print("Soy un pez");
  }

  void nadador();
  void yoSoy() => print('Soy un tiburon:');
}

class PezVolador extends Pez with Nadador, Volador {
  @override
  void infoAnimal() {
    print('******************************');
    print('Yo soy un animal');
  }

  @override
  void infoPez() {
    print("Soy un pez");
  }

  void nadador();
  void volar();
  void yoSoy() => print('Soy un Pez Volador:');
}
