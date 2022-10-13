import 'package:animal_planet_app/uril/exercise.tile.dart';
import 'package:flutter/material.dart';
import '../uril/emoticon_face.dart';

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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Ece,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Enes Ece",
                            style: TextStyle1(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "23 Jan, 2022",
                            style: TextStyle2(),
                          ),
                        ],
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 35),
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel",
                        style: TextStyle3(),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😂',
                          ),
                          SizedBox(height: 8),
                          Text('Good', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😒',
                          ),
                          SizedBox(height: 8),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😱',
                          ),
                          SizedBox(height: 8),
                          Text('Scared', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😠',
                          ),
                          SizedBox(height: 8),
                          Text('Angry', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ClipRRect(
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.grey[100],
                  child: Column(
                    children: [
                      //excercise head
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Excercises',
                            style: TextStyle4(),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(height: 20),

                      //listview
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skills',
                              numberOfExercises: 16,
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: 'Reading Skills',
                              numberOfExercises: 8,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: 'Writing Skills',
                              numberOfExercises: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle TextStyle1() {
    return TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
  }

  TextStyle TextStyle2() {
    return TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal);
  }

  TextStyle TextStyle3() {
    return TextStyle(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
  }

  TextStyle TextStyle4() {
    return TextStyle(
        color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold);
  }

  TextStyle TextStyle5() {
    return TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
  }
}
