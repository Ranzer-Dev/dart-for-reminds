void main() {
  String nome = "laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 40;

  mostrarMadura(nome, diasDesdeColheita);
  mostrarMadura1(nome, diasDesdeColheita, cor: "Laranja");
  mostrarMadura2(nome, diasDesdeColheita, cor: "com cor");
  mostrarMadura3(nome, diasDesdeColheita, cor: cor);
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