import 'package:flutter/material.dart';

class sinc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF8F00),
        title: Text("Sincronizar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFF8F00),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wifi_protected_setup,
              color: Colors.black,
            ),
            // ignore: deprecated_member_use
            title: Text(
              "Sincronizar Tudo",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.playlist_add_check,
              color: Colors.black,
            ),
            // ignore: deprecated_member_use
            title: Text(
              "Enviar Últ. Pesquisas",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
