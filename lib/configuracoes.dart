import 'package:flutter/material.dart';
import 'main.dart';

class config extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
        backgroundColor: Color(0xFFFF8F00),
      ),
      body: base(),
    );
  }
}

class base extends StatefulWidget {
  @override
  _basestate createState() => _basestate();
}

class _basestate extends State<base> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
      Container(
          padding: EdgeInsets.all(32),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(children: <Widget>[
            TextField(
                decoration:
                    InputDecoration(labelText: 'URL WebService - Interno')),
            Padding(
              padding: EdgeInsets.only(top: 16, bottom: 62),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'URL WebService - Externo',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFF9E9E9E),
                      Color(0xFF757575),
                    ]),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                child: SizedBox.expand(
                  child: TextButton(
                      child: Center(
                        child: Text(
                          'Confirmar'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => LoginPage()));
                      }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFF9E9E9E),
                      Color(0xFF757575),
                    ]),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                child: SizedBox.expand(
                  child: TextButton(
                      child: Center(
                        child: Text(
                          'Zerar Base de Dados'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => LoginPage()));
                      }),
                ),
              ),
            ),
          ])),
    ])));
  }
}
