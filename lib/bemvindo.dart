import 'package:flutter/material.dart';
import 'configuracoes.dart';
import 'lista_preco.dart';
import 'main.dart';
import 'sincronizar.dart';

class bemvindo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: corpo());
  }
}

class corpo extends StatefulWidget {
  @override
  _corpostate createState() => _corpostate();
}

class _corpostate extends State<corpo> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[fundo()]);
  }
}

class fundo extends StatefulWidget {
  @override
  _fundostate createState() => _fundostate();
}

class _fundostate extends State<fundo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          width: MediaQuery.of(context).size.width,
          height: 183,
          child: Container(
            color: Color(0xFF424242),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 560),
          child: Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        Positioned(top: 183, child: botoes())
      ],
    );
  }
}

class botoes extends StatefulWidget {
  @override
  _botoesstate createState() => _botoesstate();
}

class _botoesstate extends State<botoes> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFD6D6D6),
        ),
        Padding(
          padding: EdgeInsets.only(left: 45, top: 120),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => listadepreco()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(110, 110),
                ),
                child: Icon(
                  Icons.attach_money,
                  size: 64,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 240, top: 120),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (contex) => sinc()));
                },
                child: Icon(
                  Icons.wifi_protected_setup,
                  size: 64,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(110, 110),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 45, top: 320),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => config()));
                },
                child: Icon(
                  Icons.settings,
                  size: 64,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(110, 110),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 240, top: 320),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => LoginPage()));
                },
                child: Icon(
                  Icons.exit_to_app,
                  size: 64,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(110, 110),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 262, top: 430),
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => LoginPage()));
                },
                child: Text(
                  "Sair",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 35, top: 430),
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => config()));
                },
                child: Text(
                  "Configurações",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 240, top: 228),
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (contex) => sinc()));
                },
                child: Text(
                  "Sincronizar",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 35, top: 228),
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => listadepreco()));
                },
                child: Text(
                  "Lista de Preço",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
