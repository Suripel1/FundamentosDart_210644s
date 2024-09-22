void main() { 
  //Practica 04: tipos de datos de dart 
  
  
  //cadenas (Stribg)
  
  final String  pokemon = "Pikachu";
  
  final int  hp = 100;

  final bool  isAlive = true;
  
  final   abilities = ['Impact-Truebo', 'Cola de Hierro','Ataque Rapido'];
  final   sprites = <String>['Pikachu_front.png', 'Pikachu_back.png'];
  
  print(""" El poquemon que escribiste es $pokemon
  
  -----------------------------------------------
  las estadisticas de $pokemon son:
  Estatus de vida: $hp
  Habilidades: $abilities
  imagenes: $sprites
  """);
}