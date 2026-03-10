import 'package:exemplo1/exemplo1.dart' as exemplo1;

void main() {
  print('Hello world');

  //exemplosTipos();
  //exemplosDecisao();
  //exemploRepeticao();
  //exemploMap();
  exemploClasse();
  exemploAbstracao();
  exemploMixin();
  exemploException();
  exemploNullSafety();
}

void exemplosTipos(){
  
  int quantidadeProdutos = 10;
  double precoProduto = 19.99;
  String nomeProduto = "Teclado";
  bool emEstoque = true;

  var categoriaProduto = "Informática";

  print('int: $quantidadeProdutos');
  print('double: $precoProduto');
  print('String: $nomeProduto');
  print('bool: $emEstoque');
  print('var: $categoriaProduto');
}

void exemplosDecisao(){

  double valorPedido = 150.0;

  /*if(valorPedido > 99.99){
    print("Pedido com frete grátis.");
  }else{
    print("Pedido com frete pago.");
  }*/

  switch(valorPedido){
    case 0:
      print("Pedido vazio.");
      break;
    case < 100.0:
      print("Pedido com frete pago.");
      break;
    default:
      print("Pedido com frete grátis.");
  }
}

void exemploRepeticao(){
  
  /*for(int i = 0; i < 5; i++){
    print("Contagem: $i");
  }*/

  int i = 0;

  while(i < 5){
    print("Contagem: $i");
    i++;
  }

  List<String> produtos = ["PS5", "Xbox Series X", "Nintendo Switch"];

  for(var produto in produtos){
    if(produto == "PS5"){
      print("Produto: melhor console");
    }else{
      print("Produto: $produto");
    }
  }
}

void exemploMap(){
  
  Map<String, double> precos = {
    "PS5": 4999.99,
    "Xbox Series X": 5299.99,
    "Nintendo Switch 2": 4399.99
  };

  precos['PS5'] = 4799.99;
  print("Preço do PS5 atualizado: ${precos['PS5']}");
}

void exemploFuncaoAnonima(){
  
  print("Função Anônima");

  List<int> numeros = [1,2,3,4,5];
  var numerosDobrados = numeros.map((n) => n *2).toList();
}

class Produto{
  
  String nome;
  double preco;
  String categoria;

  Produto(this.nome, this.preco, this.categoria);

  void imprimirProduto(){
    print("Produto: $nome; Preço: R\$ $preco");
  }
}

void exemploClasse(){

  Produto produto1 = Produto("PS5", 5000.00, "Vídeogames");
  produto1.imprimirProduto();

  print("Herança\n");
  VideoGame ps5 = VideoGame("PS5", 5000.00, "Videogames", "Sony");
  ps5.imprimirProduto();
}

class VideoGame extends Produto{
  String marca;

  VideoGame(super.nome, super.preco, super.categoria, this.marca);

  @override
  void imprimirProduto(){
    super.imprimirProduto();
    print("Marca: $marca");
  }
}

abstract class Documento{
  void validarDocumento();
}

class Cpf extends Documento{
  @override
  void validarDocumento(){
    print("CPF válido.");
  }
}

void exemploAbstracao(){
  print("Abstração em Dart\n");
  Cpf cpf = Cpf();
  cpf.validarDocumento();
}

mixin LogOperacao{
  void log(String mensagem){
    print("Log: $mensagem");
  }
}

class ServicoPedido with LogOperacao{
  void processarPedido(){
    log("Processando pedido...");
    log("Pedido processado.");
  }
}

void exemploMixin(){
  print("Mixin Dart \n");
  ServicoPedido servico = ServicoPedido();
  servico.processarPedido();
}

void sacar(double valor, double saldoAtual){
  if(valor > saldoAtual){
    throw Exception("Saldo insuficiente.");
  }
  print("Saque realizado.");
}

void exemploException(){
  print("Tratamento de exceções em Dart\n");
  double saldo = 100.00;
  double valorSaque = 150.00;

  try{
    sacar(valorSaque, saldo);
  } catch (e){
    print("Erro ao realizar o saque - $e");
  } finally{
    print("Operação de saque finalizada.");
  }
}

void exemploNullSafety(){
  print("Null Safety em Dart \n");

  String? nomeProduto = null;

  if(nomeProduto != null){
    print("Esse nome é: $nomeProduto");
  }else{
    print("Nome do produto não disponível.");
  }
}

