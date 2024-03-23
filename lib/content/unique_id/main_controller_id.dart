import 'package:flutter/material.dart';
import 'package:gettxx/content/controller_id/drawer/classes/drop_down_menu.dart';

void main() {
  runApp(const DefaultCounter());
}

int count = 0;

void increment() {
  count++;
}

class DefaultCounter extends StatelessWidget {
  const DefaultCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Default Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const CounterIncrement(),
    );
  }
}

class CounterIncrement extends StatefulWidget {
  const CounterIncrement({super.key});

  @override
  State<CounterIncrement> createState() => _CounterIncrementState();
}

class _CounterIncrementState extends State<CounterIncrement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter App')),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.2),
          child: Container(
            color: Colors.grey,
            height: 0.9,
          ),
        ),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increment();
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'You have clicked the number of times $count',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.teal,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: DropdownWidget(
                    items: ['Bread', 'Orange', 'Grape'],
                    selectedItemText: 'Fruit',
                  )),
                  Expanded(
                      child: DropdownWidget(
                    items: ['Nigeria', 'Ghana', 'Cameroon'],
                    selectedItemText: 'Country',
                  )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DropdownWidget(
                items: ['Yes', 'No'],
                selectedItemText: 'Offer Accepted?',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
