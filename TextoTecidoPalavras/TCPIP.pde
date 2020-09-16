class TCPIP {
  String texto = "";

  Client cliente;

  TCPIP (Client c) {
    cliente = c;
  }

  boolean leia() {
    boolean retorno = false;
    if (cliente.available() > 0) {
      retorno = true;
      //println("entrou no if (cliente.available() > 0)");
      texto = cliente.readString();
      //println(texto);
    }
    return retorno;
  }
}
