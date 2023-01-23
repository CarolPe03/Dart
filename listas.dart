void main() {
//Creando una lista con multples tipos de datos
  List misMascotas= [1,'Ginger','perro','Husky Siberiano',7.5
                    ,2,'KC','perro','Mezcla',5.5,
                    3,'Moji','gato','No se sabe',1.2];
  print('Lista de mascotas');
  print(misMascotas);
  
  var longitud= misMascotas.length;
  print('Los datos de misMacotas son: $longitud');
  //Agregando datos de otra manera
  misMascotas.add(4);
  misMascotas.add('Moka');
  misMascotas.add('Gato');
  misMascotas.add('Siames');
  misMascotas.add('No se sabe');
  
  print('La nueva lista de mascotas');
  print(misMascotas);
  longitud=misMascotas.length;
  print('Los elementos en la lista son: $longitud');
  
  //Trabajando con una lista con un tipo de dato definido
  
  List<int> numeros=[1,2,3,4,5];
//No se puede agregar valores que no sean int
  //numeros.add(14.5);
  if(numeros.isEmpty){
    print('La lista numeros esta vacia');
  }
  if(numeros.isNotEmpty){
    print('La lista no esta vacia');
  }
  
  print('El primer numero es: ${numeros.first}');
  print('El ultimo numero es: ${numeros.last}');
  print('La posiscion del elemento 3 es: ${numeros.indexOf(3)}');
  numeros.add(3);
  numeros.add(6);
  numeros.add(7);
  numeros.add(3);
  print('La ultima posicion del elemento 3 es: ${numeros.lastIndexOf(3)}');
  
  //Agregando elementos de forma dinamica
  List<int> otraLista=[10];
  for(int i=2; i<=10;i++){
    otraLista.add(10*i);
  }
  print('La tabla de multiplicar del 10 es: ');
  print(otraLista);
}

