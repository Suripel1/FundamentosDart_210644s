void main() {
  
  var myName = 'Suri'; 
  String myLastName = 'Peña';
  final int myDNI = 210644;
  late final int myAge;
  
  //corregir datos
  myName = "Suri Jazmin";
  
      print('Hola $myName $myLastName. tu matricula es : $myDNI y tu edad no me la se porque no se cuando naciste');
  
  
 //Interpolando  el valor de las variables 
  print('Hola ${myName.toUpperCase()} ${myLastName.toUpperCase()} tu matricula es : $myDNI y tu edad no me la se porque no se cuando naciste');
  
}