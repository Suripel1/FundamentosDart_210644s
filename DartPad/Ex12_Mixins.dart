  abstract class Animal {}
  
  abstract class Mamifero extends Animal {}
  
  abstract class Ave extends Animal {}
  
  abstract class Pez extends Animal {}



  mixin Volador {
    void volar() => print('Estoy volando');
    
    void planear(int distanciaMaxima )=> print('Este animal puede planear hasta:${distanciaMaxima}');

    void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una alt de:${alturaMaxima} mts. sobre el nivel del mar');

    void descender(String velocidadMaxima) => print('Este animal puede descender a una velocidad de hasta: ${velocidadMaxima}');
  }

  mixin Caminante{

  void caminar() => print('estoy caminando');
  void comer(double comerMaximo) => print('Este animal puede comer hasta:${comerMaximo}');

  void trotar(bool estado ) => print('estoy trotando');
  void saltar(bool estado ) => print('estoy saltar');
  }

  mixin Nadador{
    void nadar() => print('Soy un animal Nadador');

    void sumergir(double profundoMaximo) => print('Me puedo sumergir un maximo de ${profundoMaximo} mts bajo el nivel del mar');

    void respirar(bool estado ) => print('${estado ? 'Sí' : 'No'} puedo respirar fuera del agua ');
  }

  class Delfin extends Mamifero with Nadador{}
  class Murcielago extends Mamifero with Volador, Caminante{}
  class Gato extends Mamifero with Caminante{}

  class Paloma extends Ave with Caminante, Volador{}
  class Pato extends Ave with Caminante, Volador, Nadador{}

  class Tiburon extends Pez with Nadador{}
  class PezVolador extends Pez with Nadador, Volador{}

  class TiburonBlanco extends Pez with Nadador{}
  class Orca extends Mamifero with Nadador{}


  void main() {

    final flipper = Delfin();
    print('Instanciando la clase de Delfin y accediendo a sus funciones.');
    flipper.nadar();

    print('----------------------------------------------------------------');

    print('Instanciando la clase de Murcielago y accediendo a sus funciones.');
    final chupacabras = Murcielago();
    chupacabras.volar();
    chupacabras.caminar();

    print('----------------------------------------------------------------');
    
    print('Instanciando la clase de Pato y accediendo a sus funciones.');
    final duck = Pato();
    duck.caminar();
    duck.volar();
    duck.nadar();
    duck.planear(100);
    duck.ascender(30);
    duck.descender('5 Km/h');
    
 print('----------------------------------------------------------------');

    final shark = TiburonBlanco();
    print('Instanciando la clase de Tiburon Blanco y accediendo a sus funciones.');
    shark.nadar();
    shark.sumergir(1000);
    shark.respirar(false);

    print('----------------------------------------------------------------');

     final whale = Orca();
    print('Instanciando la clase de Orca y accediendo a sus funciones.');
    whale.nadar();
    whale.sumergir(152);
    whale.respirar(true);

    print('----------------------------------------------------------------');
  
  }