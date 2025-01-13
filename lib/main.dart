// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/calculadora.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 75, 9, 151),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 164, 113, 230), 
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                //color: const Color.fromARGB(255, 161, 118, 230),
                //child: const Text('Layout superior'),
              ),
            ),
            Expanded(
                flex: 4,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            //color: const Color.fromARGB(255, 215, 181, 255),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          alignment: Alignment.center,
                          // // child: const Text('Primeira coluna')
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 204, 173, 253),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          alignment: Alignment.center,
                          child: Calculadora(),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            //color: const Color.fromARGB(255, 215, 181, 255),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          alignment: Alignment.center,
                          // child: const Text('Primeira coluna'),
                        ),
                      ),
                    ])),
            Expanded(
              flex:1,
              child: Container(
                alignment: Alignment.center,
                //color: const Color.fromARGB(255, 161, 118, 230),
                //child: const Text('Layout inferior'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
