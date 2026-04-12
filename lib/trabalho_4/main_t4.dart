import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/todo_t4_providor.dart';

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
        );
    }
}