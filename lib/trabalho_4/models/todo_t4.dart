//Classe principal

class Todo {
  final String id;
  final String titulo;
  final bool estaCompleto;

  Todo({required this.id, required this.titulo, this.estaCompleto = false});

  Todo copyWith({String? id, String? titulo, bool? estaCompleto}) {
    return Todo(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      estaCompleto: estaCompleto ?? this.estaCompleto,
    );
  }
}