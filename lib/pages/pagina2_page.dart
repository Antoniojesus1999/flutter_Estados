import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    //print(Get.arguments['edad']);
    final usuarioCtl = Get.find<UsuarioController>();
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
                usuarioCtl.cargarUsuario(Usuario(
                  nombre: 'Antonio Jesús',
                  edad: 23,
                ));

                Get.snackbar(
                    'Usuario establecido', 'Antonio es el nombre del usuario',
                    backgroundColor: Colors.white,
                    boxShadows: [
                      const BoxShadow(color: Colors.black45, blurRadius: 10)
                    ]);
              },
              child: const Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioCtl.cambiarEdad(32);
              },
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioCtl.cargarProfesion(
                    'Profesión #${usuarioCtl.profesionesCount + 1}');
              },
              child: const Text(
                'Añadir Profesion',
                style: TextStyle(color: Colors.white),
              )),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              child: const Text(
                'Cambiar tema',
                style: TextStyle(color: Colors.white),
              ))
        ],
      )),
    );
  }
}
