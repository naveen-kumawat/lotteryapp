import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    'assets/lot.jpg',
                  )),
              const SizedBox(
                width: 10,
              ),
              const Text('Lottery App')
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      color: const Color(0xE8E8E8E5),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Lottery Wining Number = 7 ',
                      style:  TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color(0xE8E8E8E5),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: x == 7
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Congrats you win lottery and your number is $x',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Please try again',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Butter luck next time your number is $x',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Please try again',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          ),
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(random.nextInt(10).toString());
            x = random.nextInt(15);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
