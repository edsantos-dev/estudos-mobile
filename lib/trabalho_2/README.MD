# Sistema de Gerenciamento de Livros em Dart

## Descrição
Sistema simples em Dart executado via terminal para gerenciamento de livros.  
Permite realizar operações de cadastro, listagem, atualização e remoção (CRUD).  
Os dados são armazenados em memória e são perdidos ao encerrar o programa.

---

## Classe Utilizada

### Livro
Representa um livro no sistema.

Atributos:
- titulo
- autor
- ano_publicacao
- identificador

Construtor:
```dart
Livro(this.titulo, this.autor, this.ano_publicacao, this.identificador);
```

---

## Funcionalidades

- Cadastrar livro
- Listar livros
- Atualizar livro por ID
- Remover livro por ID
- Encerrar o programa

---

## Execução

Pré-requisito:
- Dart instalado

Verificar instalação:
```bash
dart --version
```

Executar:
```bash
dart run lib/trabalho_2/main_t2.dart
```

---

## Exemplos

Cadastro:
```
Titulo: Dom Casmurro
Autor: Machado de Assis
Ano: 1899
ID: 1
```

Listagem:
```
ID: 1
Titulos: Dom Casmurro
Autor: Machado de Assis
Ano: 1899
```

---

## Observações

- Não utiliza banco de dados
- Armazenamento em memória
- IDs devem ser únicos