// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(PaginaInicial());
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/contador': (context) => Contador(),
        '/curtir': (context) => Curtir(),
        '/cadastrar': (context) => Cadastrar(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 36, 36),
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.calculate,
              size: 36,
            ),
            title: Text("Contador"),
            subtitle: Text("Exemplo de Incremento e Decremento"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/contador');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              size: 36,
            ),
            title: Text("Curtir"),
            subtitle: Text("Curtir e Descurtir"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/curtir');
            },
            
          ),
            ListTile(
            leading: Icon(
              Icons.calculate,
              size: 36,
            ),
            title: Text("Cadastrar"),
            subtitle: Text("Exemplo de Incremento e Decremento"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/cadastrar');
            },
          ),
        ],
      ),
    );
  }
}

class Curtir extends StatefulWidget {
  const Curtir({super.key});

  @override
  State<Curtir> createState() => _CurtirState();
}

class _CurtirState extends State<Curtir> {
  int x = 0;

  // Color inColor = Colors.grey;
  bool curtiu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 36, 36),
        title: Text("Curtir"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              x.toString(),
            ),
            IconButton(
              iconSize: 60,
              icon: curtiu == true
                  ? Icon(Icons.favorite, color: Colors.red)
                  : Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
              onPressed: () {
                setState(() {
                  curtiu = true;
                  x = x + 1;
                });
              },
              // icon: Icon(
              //   curtiu == true ? Icons.favorite : Icons.favorite_outline,
              //   color: curtiu == true ? Colors.red : Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int x = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 36, 36),
        title: Text("Meu aplicativo<3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 152, 36, 36)),
              onPressed: () {
                setState(() {
                  x = x + 1;
                });
              },
              child: Text("Incrementar"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 179, 73, 73)),
              onPressed: () {
                setState(() {
                  x = x - 1;
                });
              },
              child: Text("Decrementar"),
            )
          ],
        ),
      ),
    );
  }
}


class Cadastrar extends StatefulWidget {
  const Cadastrar({super.key});

  @override
  State<Cadastrar> createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 36, 36),
        title: Text("Cadastrar"),
      ),
      
    );
  }
}
//pergunta pra prova: existem dois tipos de widget, quais sao? statelesswidget (sem estado) e statefullwidget (com estado)
//estado é a possibilidade de mudança da interface representado por uma variavel
//oq é um widget
