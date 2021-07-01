import 'package:flutter/material.dart';

class listadepreco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF8F00),
        title: Text("Lista de Mercados"),
      ),
      body: departamentos(),
    );
  }
}

class mercado extends StatefulWidget {
  @override
  _mercadostate createState() => _mercadostate();
}

class _mercadostate extends State<mercado> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Mercados"),
          backgroundColor: Color(0xFFFF8F00),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(title: Text("ARMAZEM BRASIL"), onTap: null),
            ListTile(title: Text("ASSAI"), onTap: null),
            ListTile(title: Text("ATACADO AMAPA"), onTap: null),
            ListTile(title: Text("ATACADO CARREFOUR"), onTap: null),
            ListTile(title: Text("FAVORITO"), onTap: null),
            ListTile(title: Text("FORTALEZA"), onTap: null),
            ListTile(title: Text("MENINO JESUS"), onTap: null),
            ListTile(title: Text("REDE UNIDOS"), onTap: null),
            ListTile(title: Text("SANTA LUCIA"), onTap: null),
          ],
        ));
  }
}

class departamentos extends StatefulWidget {
  _departamentosstate createState() => _departamentosstate();
}

class _departamentosstate extends State<departamentos> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(
      children: <Widget>[
        ListTile(
            title: Text("COTAÇÃO LIMPEZA"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO MERCEARIA"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO PERFUMARIA"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO OFERTA"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO BEBIDAS(BENEDITA)"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO BEBIDAS(DELTA)"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO BEBIDAS"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO CONGELADOS"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO REFRIGERANTE"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO FRIOS"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO ITENS NORTEADORES"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO FRALDA"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO TEMPEROS"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO LATICINEOS"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO HORTFRUT"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO CAPRICCHE"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
        ListTile(
            title: Text("COTAÇÃO REXONA"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contex) => mercado()));
            }),
      ],
    ));
  }
}
