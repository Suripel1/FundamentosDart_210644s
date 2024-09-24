void main() {
  //FUNCIONES 
  //1.-Llamado de una funcion basica 
  
  greetEveryone();
  
  //2 Lammado de una funcion que retorna un cvalor
  //2.1 Si no deseamos almacenar el valor , se invoca normalmente
  print("Hoy es el dia numero ${getDayNumber()}");
  
  //2.Necesitamos almacenar el valor retonado para utilizar su valor en otras operaciones del programa
  final numeroDia = getDayNumber();
  print ("En tres dias estaremos a: ${(numeroDia+3)}");
  
  //3 Llamado de una funcion con parametros
  print(greetSomeOne("Suri Jazmin"));
  
  //3.1 Que pasa si...
  print(greetSomeOne("45"));
  print(greetSomeOne("-15"));
  print(greetSomeOne("3.1416"));
  print(greetSomeOne("true"));
  
  //3.2 pruebas
   /*print(greetSomeOneTyped("45"));
  print(greetSomeOneTyped("-15"));
  print(greetSomeOneTyped("3.1416"));
  print(greetSomeOneTyped("true"));*/
  print(greetSomeOneTyped("Luz Adriana"));
  
  
  // 4 Llamado de funciones con varios parametros pocicionales 
  // Para este caso los parametros deben ser enviados con la pososcion exacta y segun DART ambos por defecto son obligatorios
  
  print(greetSomeoneHourOfDay("Suri Jazmin", 15));
  //Que pasa si solo se manda un parametro?
  /*print(greetSomeoneHourOfDay(null, null));
  print(greetSomeoneHourOfDay("Suri Jazmin"));  
  print(greetSomeoneHourOfDay( 10));*/

  
  print(greetSomeoneHourOfDay("Jorge .", null));
  print(greetSomeoneHourOfDay("Yair."));
  
   //5. FUNCIONES LAMBDA - las funciones lamdda, o mejor conocidas como funciones anonimas o funciones simplificadas
    //se ejecutan de manera simple y no frecuente en la ejecucion de un programa o sistema
    var calculaTotalcarrito = (double productQuantity, double productprice,
                        double percentageDiscount) => (productQuantity * productprice)*((100-percentageDiscount)/100);
    double cantidad = 3.180;
    double precio = 1725.10;
    double descuento = 8;
    print("""
          Costo del producto: ${precio};
          Cantidad: ${cantidad};
          Descuento: ${descuento}
          --------------------------------------
          Costo del Crrito de Compras: ${calculaTotalcarrito(cantidad,precio,descuento)}
          """);

  
  //6 Lllados de una funcion con parametros nombrados.
  print(infoCarListStatus(buyerName: "Lorena"));
  
  //6.1 LLamado de una funcion con los parametros en desorden posicional
   print(infoCarListStatus(status: "En espera de pago",
                           amountCarList: 2516.28,
                           buyerName: "Abi"
                          ));
  
  
}


  

 //1 FUNCIONES SIN PARAMETROS Y SIN RETORNO DE VALOR 

greetEveryone()
{
  print("Hola a todos y todas desde DART");
}

//2 FUNCIONES QUE RETORNAN VALORES
int getDayNumber()
{
  DateTime now = DateTime.now();
    return now.day;
}


// 3 FUNCIONES QUE REQUIEREN AL MENOS UN PARAMETRO (sin tipificacion)

String greetSomeOne(personName)
{
  return "Hola, ${personName}";
 
}

// 3.1 FUNCIONES QUE RECIBEN PARAMETROS TIPIFICADOS

String greetSomeOneTyped(String personName)
{
  return "Hola, ${personName}";
 
}


// 4 FUNCIONES QUE RECIBEN MAS DE UN PARAMETRO

String greetSomeoneHourOfDay(String personName, [int? hourDay])
{
  String greeting;
  
  // el operador '? significa que si es nulo lo inicialice como, en caso de que tenga valor ignora la instruccion'
  hourDay ??= DateTime.now().hour;
  print ("Hora: ${hourDay}"); 
  
  
  if(hourDay>= 6 && hourDay< 12)
  {
    greeting  = "Hola Buenos Dias ";
    
  }
  else if(hourDay>=12 && hourDay<18)
  {
    greeting = "Buenas Tardes";
    
  }
  else
  {
    greeting = "Buenas Noches";
  }
  return "${greeting}, ${personName}" ;
    
    
    
    
}

// 6 FUNCIONES CON PARAMETROS NOMBRADOS

String infoCarListStatus({required String buyerName, double amountCarList=0.0, String status="Seleccion de Productos"})
{
  return "El carrito de compras de: ${buyerName}, tiene un total de : \$${amountCarList} y actualmente esta en estatus: ${status}";
}
