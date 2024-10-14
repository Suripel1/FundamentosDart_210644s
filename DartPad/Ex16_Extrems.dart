void main() {
  
  // Llama a la función emitNumbers() que devuelve un Stream 
  // Cada vez que el Stream emite un valor, se ejecuta la función que imprime el valor.
  emitNumbers().listen( (value) {
    print('Stream value: $value');
  });
  
}


Stream<int> emitNumbers() {
  
  // Retorna un Stream que emite valores enteros.
  // Stream.periodic genera un nuevo valor cada 3 segundos (definido por Duration).
  return Stream.periodic( const Duration(seconds: 3), (value) {
    
    // Cada vez que se genera un valor en el Stream, se devuelve el número actual.
    
    return value;
    
  // El método .take(5) limita el Stream a emitir solo los primeros 4 valores.
  }).take(4);
  
}