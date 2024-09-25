void main() {
  
  //Clase con parametros pisicionales y se deben de respetar el posicionamineto
  final Hero capitan = Hero('Capitan America', 'Fuerza');
  
  // esta clase no importa como esta el posicionamiento
  final viuda = Team( type: 'Heroes', name: 'Viuda Negra');
  
  final avengers = Team(name:"The Avengers");

  print(capitan);
  print(capitan.name);
  print(capitan.power);
  print('----------------------------------------------------');
  print(viuda);
  print(viuda.name);
  print(viuda.type);
  //invocando al metodo rescrito con @override
  print(viuda.toString());
  print('----------------------------------------------------');
  print(avengers);
  print(avengers.name);
  print(avengers.type);
  //invocando al metodo rescrito con @override
  print(avengers.toString());
}

class Hero {
  String name;
  String power;

  Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
}

class Team {
  String name;
  String type;
  
  Team({required this.name, this.type="No definido"});
  
  //@override
  String toString(){
    return 'Grupo: $name, tipo: $type';
  }
  
}
