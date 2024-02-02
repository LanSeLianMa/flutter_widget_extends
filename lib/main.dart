import 'package:flutter/material.dart';
import 'package:flutter_widget_extends/page/test_stateful_widget.dart';
import 'package:flutter_widget_extends/page/test_stateless_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const TestStatefulWidget(),
                    ),
                  );
                },
                child: const Text(
                  'TestStatefulWidget',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const TestStatelessWidget(),
                  ),
                );
              },
              child: const Text(
                'TestStatelessWidget',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
