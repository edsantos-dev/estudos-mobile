import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/todo_provider_t4.dart';

void main(){
    runApp(
        const ProviderScope(
            child: MeuApp(),
        ),
    );
}

class MeuApp extends StatelessWidget{
    const MeuApp({super.key});

    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title:'Lista de Tarefas',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                scaffoldBackgroundColor: Colors.white,
            ),
            home: const TelaTarefas(),
        );
    }
}
class TelaTarefas extends ConsumerWidget {
  const TelaTarefas({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listaTarefas = ref.watch(todoListProvider);
    
    // Controlador para gerenciar o texto digitado no TextField
    final controlador = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Tarefas'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Área de input
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controlador,
                    decoration: const InputDecoration(
                      hintText: 'O que precisa ser feito?',
                      border: OutlineInputBorder(),
                    ),
                    // Permite adicionar a tarefa ao pressionar "Enter" no teclado
                    onSubmitted: (valor) {
                      if (valor.isNotEmpty) {
                        ref.read(todoListProvider.notifier).addTodo(valor);
                        controlador.clear();
                      }
                    },
                  ),
                ),
                const SizedBox(width: 8),
                // Botão com ícone de "+"
                IconButton.filled(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (controlador.text.isNotEmpty) {
                      ref.read(todoListProvider.notifier).addTodo(controlador.text);
                      controlador.clear();
                    }
                  },
                ),
              ],
            ),
          ),
          
          // Área da lista de tarefas
          Expanded(
            child: listaTarefas.isEmpty
                // Se a lista estiver vazia, mostra uma mensagem amigável
                ? const Center(child: Text('Nenhuma tarefa por enquanto!'))
                // Se tiver itens, constrói a lista
                : ListView.builder(
                    itemCount: listaTarefas.length,
                    itemBuilder: (context, indice) {
                      final tarefa = listaTarefas[indice];
                      return ListTile(
                        // Checkbox para marcar como concluído
                        leading: Checkbox(
                          value: tarefa.estaCompleto,
                          // Chama a função de alternar status no clique
                          onChanged: (_) => ref
                              .read(todoListProvider.notifier)
                              .toggleTodo(tarefa.id),
                        ),
                        // Título da tarefa
                        title: Text(
                          tarefa.titulo,
                          style: TextStyle(
                            // Se estiver completo, risca o texto
                            decoration: tarefa.estaCompleto
                                ? TextDecoration.lineThrough
                                : null,
                            // Se estiver completo, deixa o texto cinza
                            color: tarefa.estaCompleto ? Colors.grey : Colors.black,
                          ),
                        ),
                        // Botão de excluir
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.redAccent),
                          onPressed: () => ref
                              .read(todoListProvider.notifier)
                              .removeTodo(tarefa.id),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}