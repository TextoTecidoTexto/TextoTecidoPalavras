/* Copyright (c) 2020 Jarbas Jácome and others.
 * For information on usage and redistribution, and for a DISCLAIMER OF ALL
 * WARRANTIES, see the file, "LICENSE.txt," in this distribution.  */

/* ProcessadorDeTexto
 *
 */
class ProcessadorDeTexto {
  String quebraLinha = "\n\r\f";
  String separadoresPalavras = "'\"?!:,.;/() \b"+quebraLinha;
}
