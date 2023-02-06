import 'dart:async';
import 'dart:ffi';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) async {
  //Programa asincrono que den esperar a que el hilo secundario termine
  //Acciones del hilo principal
  print('Antes de la peticion de datos....');
  print('Esperando saber si el numero es primo');
  //Peticiones al hilo secundario
  //print(getNombre(18)); Asi no regreso el valor de la funcion solo la instancia
  //Llamado que se comporta como unfusdturew
 // getNombre(18).then(print);
final userName = await getNombre(18);

print('El nombre del usuario es: $userName');




  //Acciones del hilo principal
  print('Aqui contnuamos con el hilo principal ');

}
 Future <String> getNombre(int id) async{
  return Future.delayed(Duration(seconds: 20),(){
    return 'Tiburcio';
  });
    
  }


    
  
