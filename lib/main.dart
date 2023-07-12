// ignore_for_file: unrelated_type_equality_checks

import 'dart:math';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

void main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int height = 120;
  int age = 23;
  int weight = 60;
  bool isMale = true;
  Color inactiveColor = const Color(0xff24232f);
  Color activeColor = Colors.cyan;

  late double result;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.cyan == Gender.male
                          ? activeColor
                          : inactiveColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.person,
                          color: Colors.cyan,
                          size: 45,
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Text(
                          'male',
                          style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 60,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.cyan == Gender.female
                            ? activeColor
                            : inactiveColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.personDress,
                            color: Colors.cyan,
                            size: 45,
                          ),
                          SizedBox(
                            height: 19,
                          ),
                          Text(
                            'female',
                            style: TextStyle(
                              color: Colors.amberAccent,
                              fontSize: 60,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.cyan,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.amberAccent,
                              ),
                            ),
                            const Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTickMarkColor: Colors.white,
                      overlayColor: const Color(0x291DE986),
                      inactiveTickMarkColor: Colors.amberAccent,
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 20,
                      ),
                      overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                      thumbColor: const Color(0xff1de986),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        max: 250,
                        min: 100,
                        onChanged: (double v) {
                          setState(() {
                            height = v.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              GestureDetector(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    const Text(
                      'weight',
                      style: TextStyle(
                          color: Colors.cyan, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      weight.toString(),
                      style: const TextStyle(
                          color: Colors.cyan, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.cyan,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.cyan,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.cyan,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (weight > 20) {
                                  weight--;
                                }
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.cyan,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    const Text(
                      'age',
                      style: TextStyle(
                          color: Colors.cyan, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      age.toString(),
                      style: const TextStyle(
                          color: Colors.cyan, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.cyan,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.cyan,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.cyan,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (age > 5) {
                                  age--;
                                }
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.cyan,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        margin: const EdgeInsets.only(top: 150),
                        width: double.infinity,
                        height: 100,
                        color: const Color(0xff1DE986),
                        child: const Center(
                          child: Text(
                            'Calculate',
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        result =weight/pow(height/ 100,2);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
