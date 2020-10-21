class TCPIP {
  String texto = "";

  Client cliente;
  Server servidor;

  TCPIP (Server s) {
    servidor = s;
  }

  boolean leia() {
    boolean retorno = false;
    cliente = servidor.available();
    if (cliente != null) {
      retorno = true;
      //println("entrou no if (cliente.available() > 0)");
      texto = cliente.readString();
      //println(texto);
    }
    return retorno;
  }
}
