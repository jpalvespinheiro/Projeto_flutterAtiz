import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'bemvindo.dart';
import 'configuracoes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(children: <Widget>[
              Positioned(
                child: Image.asset(
                  "imagens/logocortado.png",
                  width: MediaQuery.of(context).size.width,
                  height: 183,
                ),
              ),
              Positioned(
                top: 127,
                child: Container(
                    padding: EdgeInsets.all(32),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(62),
                            topRight: Radius.circular(62))),
                    child: Column(children: <Widget>[
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Usuário', icon: Icon(Icons.person))),
                      Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 62),
                        child: TextField(
                          obscureText: isHiddenPassword,
                          decoration: InputDecoration(
                              hintText: 'Senha',
                              icon: Icon(Icons.security),
                              suffixIcon: InkWell(
                                onTap: _mostrasenha,
                                child: Icon(Icons.visibility),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFFF8F00),
                                Color(0xFFFF6F00),
                              ]),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              )),
                          child: SizedBox.expand(
                            child: TextButton(
                                child: Center(
                                  child: Text(
                                    'Login'.toUpperCase(),
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
                                          builder: (contex) => bemvindo()));
                                }),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFFF8F00),
                                Color(0xFFFF6F00),
                              ]),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              )),
                          child: SizedBox.expand(
                            child: TextButton(
                                child: Center(
                                  child: Text(
                                    'Configurações'.toUpperCase(),
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
                                          builder: (contex) => config()));
                                }),
                          ),
                        ),
                      ),
                    ])),
              ),
            ])));
  }

  void _mostrasenha() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}
