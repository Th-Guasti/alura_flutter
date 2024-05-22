import 'package:alura_flutter/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(
          'Tarefas',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      //Trecho de código suprimido

      body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 800),
          child: ListView(
            children: const [
              Task('Aprender Flutter', 'assets/images/dash.png', 3),
              Task('Andar de Bike', 'assets/images/bike.webp', 2),
              Task('Meditar', 'assets/images/meditar.jpeg', 5),
              Task('Ler', 'assets/images/livro.jpg', 4),
              Task('Jogar', 'assets/images/jogar.jpg', 1),
              SizedBox(
                height: 80,
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(
          Icons.remove_red_eye,
          color: Colors.black,
        ),
      ),
    );
  }
}
