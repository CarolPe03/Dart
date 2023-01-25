
void main(List<String> arguments) {
  dividir();
  //bool r=esPar();
  print('El número es par?: ${esPar()}');
  saludo1('Sinforosa');
  String nombre='Tiburcio';
  saludo1(nombre);
  saludo2('Pancrasio',1985);
  saludo3('Filomena',2000);
  String? nombre2;
  int? year2;
  saludo3(nombre2, year2);
  saludo4();
  saludo4('Transito');
  saludo4('Cupertino',2040);

  saludo5();
  saludo5(name: 'Anaclaeto');
  saludo5(year:1996,name:'Anastasia');
  saludo5(year: year2);
  saludo6(name:'Cleto', mensaje:'Que onda');
  saludo6(mensaje:'Que tal', name: 'Petronila');


}
void dividir(){
  int n1=12;
  int n2=4;
  int cociente;
  int residuo;
  double resultado;

  resultado= n1/n2;
  print('Resultado de dividir $n1 entre $n2 es $resultado');

  cociente= n1~/2;
  print('Cociente de la division entre $n1 y $n2 es $cociente');

  residuo= n1%n2;
  print("Residuo de la división entre $n1 y $n2 es $residuo");
}

bool esPar(){
  var numero=15;
  if(numero%2 ==0){
    return true;
  }else{
    return false;
  }
}
void saludo1(String name){
  print('Hols $name');
}
void saludo2(String name,int year){
  print('Saludo2 Hola $name, estas en el año $year');
}
void saludo3(String? name,int? year){
  print('Saludo 3 Hola $name,estas en el año $year');
}
void saludo4([String name='desconocido',int year=2023]){
  print('Saludo4 Hola $name, estás en el año $year');
}
void saludo5({String name='desconocido',int? year}){
  print('Saludo5 Hola $name, estás en el año $year');
}
void saludo6({required String name, required String mensaje}){
  print('Saludo6: $mensaje,$name');
}