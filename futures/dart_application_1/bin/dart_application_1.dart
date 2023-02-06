//Ejemplo de uso de la clase Future
//Se va a enviar tareas al segundo planp
//Mientras la aplicacion debe seguir trabajando
void main(List<String> arguments) {
 //Acciones del hilo principal
 print('Vamos a conectar con la NASA');
 print('Pidiendo datos del espacio exterior...');
 //Llamando a la funcion future
getDataFromMars('htps://mars.apli.nasa.com',3).then((data){
print(data);
print(data.toUpperCase());
print(data.toLowerCase());
});
 //Mas acciones del hilo principal
 print('Mientras, seguimos trabajando en el hilo principal....');
 //Llamando a otra funcion tipo Future 
 var alienWeitght=0;
 getAlienWeitght(1,30).then((peso) => alienWeitght=peso);
 print('Peso del alien: $getAlienWeitght');
 if (alienWeitght > 100){
  print("El alien tiene sobrepeso");
 }else{
  print('Esta en su peso ideal');
 }
}
Future<String> getDataFromMars(String url, int idPlanet){
  var planeta='';
  if(idPlanet==2){
    planeta='Marte';
  }else{
    if(idPlanet==1){
      planeta='Venus';
    }else{
      planeta='Tierra';
    }
  }
  //Acciones de larga duracion que debe realizar la funcion
  return Future.delayed(Duration(seconds: 10),(){
    if(idPlanet==1){
      return 'Se encontro vida extraterrestrei en $planeta';
    }else {
      return 'Lo sentimos,no se encontró vida inteligente en $planeta';
    }
});
}

Future<int> getAlienWeitght(int idPlaneta, int referencia){
  int peso=referencia; 
  if(idPlaneta ==1 || idPlaneta ==2){
    for (int i=1; i<=10;i++ ){
      peso *=i;
    }
  }else {
    peso *=2;
  }
  return Future.delayed(Duration(seconds: 10),(()=> peso));
}