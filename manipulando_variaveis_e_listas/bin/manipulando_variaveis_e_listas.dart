void main() {
  String nome = "laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 40;

  Legumes mandioca = Legumes('Macaxeira', 1200, 'Marrom',true);
  Fruta banana = Fruta('Banana',100,'Amarela','doice',12);
  Nozes macadamia = Nozes('macadamia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao = Citricas('Limão', 120, 'verde', 'azedo', 5, 9);

  mandioca.printAlimentos();
  banana.printAlimentos();
  macadamia.printAlimentos();
  limao.printAlimentos();

  mandioca.cozinhar();
  banana.fazerSuco();
  limao.existeRefri(true);
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
class Fruta extends Alimento{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso,String cor,this.sabor,this.diasDesdeColheita,{this.isMadura}):super(nome,peso,cor);
  
  void estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura, para poder comer. Ela está madura? $isMadura");
  }

  void fazerSuco(){
    print('Você fez um otimo suco de $nome');
  }

}

class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome,this.peso,this.cor);

    void printAlimentos(){
      print('Este(a) $nome pesa $peso gramas e é $cor');
  }
}

class Legumes extends Alimento{

  bool isPrecisaCozinhar;

  Legumes(String nome,double peso,String cor,this.isPrecisaCozinhar): super(nome,peso,cor);

  void cozinhar(){
    if(isPrecisaCozinhar){
      print('Pronto, o $nome está cozinhando');
    }else{
      print('o $nome não precisa cozinhando');
    }
  }
}

class Citricas extends Fruta{

  double nivelAzedo;

  Citricas(String nome, double peso, String cor,String sabor, int diasDesdeColheita, this.nivelAzedo):super(nome, peso, cor,sabor, diasDesdeColheita);

  void existeRefri(bool existe){
    if(existe){
      print('Existe Refregerante de $nome');
    }else{
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta{

  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor,String sabor, int diasDesdeColheita, this.porcentagemOleoNatural):super(nome,peso,cor,sabor,diasDesdeColheita);
}