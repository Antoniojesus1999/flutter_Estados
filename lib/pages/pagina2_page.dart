import 'package:estados/pages/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                final newUser = Usuario(
                    nombre: 'Antonio Jesús',
                    edad: 23,
                    profesiones: ['Fullstack Developer', 'Back Semi experto']);
                usuarioService.usuario = newUser;
              },
              child: const Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioService.cambiarEdad(39);
              },
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioService.agregarProfesion();
              },
              child: const Text(
                'Añadir Profesion',
                style: TextStyle(color: Colors.white),
              ))
        ],
      )),
    );
  }
}
