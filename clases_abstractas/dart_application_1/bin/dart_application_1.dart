void main(List<String> arguments) {
final unCuadrado= Cuadrado();
print('El area de unCuadrado es: ${unCuadrado.area}');
}
abstract class FiguraGeometrica {
  //establecineod lo que debeuna figura geometrica
  double? area;

  double calcularArea();
}

class Cuadrado implements FiguraGeometrica {
  //Cuadrado hereda de Figura Geometrica
  //y debe implemnetar tod lo definido en la clase abstracta

  double? area;
  double calcularArea() {
    double lado = 12.5;
    return lado * lado;
  }
}
