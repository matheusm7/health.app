import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';
import 'package:mentalhealthapp/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // saudações
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Olá Jared
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Olá Matheus!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '1 Fev, 2023',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),

                      // noficação

                      Container(
                        decoration: BoxDecoration(color: Colors.blue[600], borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //barra de pesquisa

                  // ignore: avoid_unnecessary_containers
                  Container(
                    decoration: BoxDecoration(color: Colors.blue[600], borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Procurar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // como você se sente?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Como você se sente?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // 4 emojis
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //mal
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '😩',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Mal',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                      //normal
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '🙂',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Normal',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                      // bem
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '😄',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bem',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                      // excelente

                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '🥳',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excelente',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Center(
                  child: Column(
                    children: [
                      //exercicios
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Exercícios',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //lista de exercicios
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Saúde',
                              numberOfExercises: 16,
                              color: Color.fromARGB(255, 194, 152, 88),
                            ),
                            ExerciseTile(
                              icon: IconData(0xf706, fontFamily: 'MaterialIcons'),
                              exerciseName: 'Psicológico',
                              numberOfExercises: 8,
                              color: Colors.green,
                            ),
                            ExerciseTile(
                              icon: IconData(0xe1dc, fontFamily: 'MaterialIcons'),
                              exerciseName: 'Corrida',
                              numberOfExercises: 20,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),

                      // ignore: avoid_unnecessary_containers
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
