import 'package:flutter_riverpod/flutter_riverpod.dart'; //biblioteca de gerenciamento de estado para o Flutter
import '../models/todo_t4.dart';

//lógica
class TodoListNotifier extends Notifier<List<Todo>> {
  @override
  List<Todo> build() => []; // Estado inicial: lista vazia

  void addTodo(String titulo) {
    // Cria uma nova lista com os itens antigos + o novo objeto
    state = [...state, Todo(id: DateTime.now().toString(), titulo: titulo)];
  }

  void toggleTodo(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id) 
          todo.copyWith(estaCompleto: !todo.estaCompleto) 
        else 
          todo
    ];
  }

  void removeTodo(String id) {
    // Filtra a lista removendo o item com o ID correspondente
    state = state.where((todo) => todo.id != id).toList();
  }
}

final todoListProvider = NotifierProvider<TodoListNotifier, List<Todo>>(() {
  return TodoListNotifier();
});