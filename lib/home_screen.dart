import 'package:flutter/material.dart';
import 'counter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Counter counter = Counter(value: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${counter.value}',
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counter.decrementCounter();
                  });
                },
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 32,
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counter.incrementCounter();
                  });
                },
                child: const Icon(Icons.add),
              )
            ],
          ),
        ],
      ),
    );
  }
}
