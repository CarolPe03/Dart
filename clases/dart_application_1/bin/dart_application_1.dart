void main(List<String> arguments) {
  var unaLaptop= Computadora(marca: 'Dell',cpu: 'Intel core i9',ram:32);
  unaLaptop.marca='Lenovo';
  unaLaptop.cpu='Celeron';
  unaLaptop.ram=4;
  print('Información de la Laptop que te llegó a cada: $unaLaptop');
}
class Computadora{
  //Campos
  String? marca;
  String? cpu;
  int? ram;

 /* Computadora(String m,String c, int r){
    this.marca= m;
    this.cpu=c;
    this.ram=r;
  }*/
//Forma corta de escribir el constructor con parámetros nombrados
  Computadora({this.marca,this.cpu,this.ram});

  @override
  String toString() {
    // TODO: implement toString
    return 'Marca: ${this.marca}, CPU: ${this.cpu}, RAM: ${this.ram}';
  }
}
