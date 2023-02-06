
void main(List<String> arguments) async {

  print('Antes de la peticion de datos....');
  print('Esperando saber si el numero es primo...');


final numero = await getNumero(19);
final bool par;
  
 if (numero % 2 ==0){
    par=true;
    print ('El numero es par, porque el bool es $par');
    
  }else {
    par= false;
    print ('El numero es impar, porque el bool es $par');
  }
  
  
  //Acciones del hilo principal
  print('Fin del programa ');

}
 Future <int> getNumero(int id) async{
  return Future.delayed(Duration(seconds: 20),(){
    return id;
  });
    
  }
