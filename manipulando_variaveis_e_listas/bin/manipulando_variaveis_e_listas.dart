void main() {
  String nome = "laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 40;
}

//Posicionais Obrigatorios
mostrarMadura(String nome, int dias){
  if(dias >= 30){
    print("A $nome esta madura");
  }else{
    print("A $nome não esta madura");
  }
}

//Nomeados opcionais
mostrarMadura1(String nome, int dias,{String? cor}){
  if(dias >= 30){
    print("A $nome esta madura");
  }else{
    print("A $nome não esta madura");
  }

  if(cor != null){
    print("A $nome tem a cor: $cor");
  }
}

//Parametros com "padrão"
mostrarMadura2(String nome, int dias,{String cor = "Sem cor"}){
  if(dias >= 30){
    print("A $nome esta madura");
  }else{
    print("A $nome não esta madura");
  }

  if(cor != "Sem cor"){
    print("A $nome tem a $cor");
  }
}

//Modificador "required"

mostrarMadura3(String nome, int dias, {required String cor}){
  if(dias >= 30){
    print("A $nome esta madura");
  }else{
    print("A $nome não esta madura");
  }

  if(cor != "Sem cor"){
    print("A $nome tem a $cor");
  }
}

//função recursiva

funcRecursiva(int contador, int condicaoParada) {
  print("Estamos a $contador iterações sem StackOverflow.");
  if (contador >= condicaoParada) {
    return;
  }
  funcRecursiva(contador + 1, condicaoParada);
}

//classe - objeto
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso,this.cor,this.sabor,this.diasDesdeColheita);
  
  void estaMAdura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura, para poder comer. Ela está madura? $isMadura");

  }
}
