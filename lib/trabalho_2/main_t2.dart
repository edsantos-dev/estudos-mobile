import 'dart:io';

class Livro {
  String titulo;
  String autor;
  int ano_publicacao;
  int identificador;

  Livro(this.titulo, this.autor, this.ano_publicacao, this.identificador);
}

void main() {
  List<Livro> livros = [];
  int opcao = 0;

  do {
    print("\n=== MENU ===");
    print("1 - Cadastrar Livro");
    print("2 - Listar Livros");
    print("3 - Atualizar Livros");
    print("4 - Remover Livro");
    print("5 - Sair");
    stdout.write("Escolha: ");

    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarLivro(livros);
        break;

      case 2:
        listarLivros(livros);
        break;

      case 3:
        atualizarLivro(livros);
        break;

      case 4:
        removerLivro(livros);
        break;

      case 5:
        print("Saindo ... ");
        break;

      default:
        print("Opção inválida ... ");
    }
  } while (opcao != 5);
}

void cadastrarLivro(List<Livro> livros) {
  stdout.write("Titulo: ");
  String titulo = stdin.readLineSync()!;

  stdout.write("Autor: ");
  String autor = stdin.readLineSync()!;

  stdout.write("Ano:  ");
  int ano = int.parse(stdin.readLineSync()!);

  stdout.write("ID:  ");
  int id = int.parse(stdin.readLineSync()!);

  livros.add(Livro(titulo, autor, ano, id));

  print("Livro cadastrado com sucesso!");
}

void listarLivros(List<Livro> livros) {
  if (livros.isEmpty) {
    print("Nenhum livro cadastrado");
    return;
  }
  for (var livro in livros) {
    print("\nID: ${livro.identificador}");
    print("Titulos: ${livro.titulo}");
    print("Autor: ${livro.autor}");
    print("Ano: ${livro.ano_publicacao}");
  }
}

void atualizarLivro(List<Livro> livros) {
  stdout.write("Digite o ID do livro que deseja atualizar: ");
  int id = int.parse(stdin.readLineSync()!);

  bool encontrado = false;

  for (var livro in livros) {
    if (livro.identificador == id) {
      stdout.write("Novo Titulo: ");
      livro.titulo = stdin.readLineSync()!;

      stdout.write("Novo Autor: ");
      livro.autor = stdin.readLineSync()!;

      stdout.write("Novo ano: ");
      livro.ano_publicacao = int.parse(stdin.readLineSync()!);

      print("Livro atualizado com sucesso: ");
      encontrado = true;
      break;
    }
  }
  if (!encontrado) {
    print("Livro não encontrado!");
  }
}

void removerLivro(List<Livro> livros) {
  stdout.write("Digite o ID do livro que deseja remover: ");
  int id = int.parse(stdin.readLineSync()!);

  int tamanhoAntes = livros.length;

  livros.removeWhere((livro) => livro.identificador == id);

  if (livros.length < tamanhoAntes) {
    print("Livro removido com sucesso!");
  } else {
    print("Livro não encontrado");
  }
}
