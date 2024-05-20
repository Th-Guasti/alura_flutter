// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tarefas',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Task('Aprender flutter, cursar inglês, projeto pessoal, stinrel e etc'),
            Task('Andar de bike'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black26,
                    width: 72,
                    height: 100,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                    nome,
                    style: TextStyle(fontSize: 24, overflow: TextOverflow.ellipsis),
                  )),
                  ElevatedButton(
                      onPressed: () {
                        print('seta clicada');
                      },
                      child: Icon(Icons.arrow_drop_up))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
