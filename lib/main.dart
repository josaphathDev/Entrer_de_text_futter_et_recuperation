import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void dispose1() {
    myController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('recupratio  des information entrer '),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: myController,
              ),
              TextField(
                controller: myController1,
              ),
              TextField(
                controller: myController2,
              ),
              TextField(
                controller: myController3,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Center(
                  child: Container(
                    color: Colors.black87,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(8.0),
                              color: Colors.redAccent,
                              child: Text(myController.text),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(8.0),
                              color: Colors.lightGreen,
                              child: Text(myController1.text),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(8.0),
                              color: Colors.orange,
                              child: Text(myController2.text),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(8.0),
                              color: Colors.yellowAccent,
                              child: Text(myController3.text),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [AppBar()],
              );
            },
          );
        },
        tooltip: '',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
