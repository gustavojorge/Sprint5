import 'package:flutter/material.dart';
import 'package:flutter_studies/screens/form_screen.dart';

import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          "Tarefas",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Task("Aprender flutter", "assets/images/dash.png", 4),
          Task("Andar de bike", "assets/images/bike.webp", 2),
          Task("Ler", "assets/images/ler.jpg", 1),
          Task("Meditar", "assets/images/meditar.jpeg", 5),
          Task("Jogar", "assets/images/play.jpg", 1),
          SizedBox(
            height: 80,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
