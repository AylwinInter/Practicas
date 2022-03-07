import 'package:farmacia/principal/home.dart';
import 'package:farmacia/principal/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  var activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: ButtonsFlutter(),
      body: getPaginas(),
    );
  }

  Widget getPaginas() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePrincipal(),
        Center(
          child: Text(
            "Biblioteca",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Busqueda",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Configuracion",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget ButtonsFlutter() {
    List items = [Feather.home, Feather.book, Feather.search, Feather.settings];
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black26),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
              icon: Icon(
                items[index],
                color: activeTab == index ? Colors.grey : Colors.white,
              ),
            );
          }),
        ),
      ),
    );
  }
}

FormularioImagen() {
  return Row(
    children: [
      Center(
        child: Imagenes(),
      )
    ],
  );
}
