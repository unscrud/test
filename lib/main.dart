import 'package:flutter/material.dart';

void main() => runApp(const MeuApp());

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MeuHomePage(title: 'Testando o stateful'),
    );
  }
}

class MeuHomePage extends StatefulWidget {
  final String title;

  const MeuHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MeuHomePageState createState() => _MeuHomePageState();
}

class _MeuHomePageState extends State<MeuHomePage> {
  int _contador = 0;

  void _add() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_contador',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: const Text(
                '+1',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onPressed: _add,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: const Text(
                'apagar',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _contador = 0;
                });
              },
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
