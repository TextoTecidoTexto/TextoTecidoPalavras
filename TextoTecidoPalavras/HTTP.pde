class HTTP {
  String[] linhas;
  String texto = "";
  String nomeDoArquivo;
  int LEITURAS_POR_SEG = 1;

  boolean rodandoThread = false;
  boolean pararThread = false;

  HTTP (String nome) {
    nomeDoArquivo = nome;
  }
  
  void iniciaThreadLeitura() {
    if (!rodandoThread) {
      thread("threadLeitura");
      rodandoThread = true;
    }
  }
  
  void paraThreadLeitura() {
    pararThread = true;
  }

  void threadLeitura () {
    while (!pararThread) {
      leia();
      delay(int(1000/(float) LEITURAS_POR_SEG));
    }
    rodandoThread = false;
    pararThread = false;
  }

  boolean leia() {
    boolean retorno = false;
    linhas = loadStrings(nomeDoArquivo);
    texto = "";
    if (linhas != null) {
      for (int i=0; i<linhas.length; i++) {
        texto += linhas[i] + "\n";
      }
      atualizarLeioute = true;
      retorno = true;
    } else {
      println("Erro ao ler arquivo.");
    }
    return retorno;
  }
}
