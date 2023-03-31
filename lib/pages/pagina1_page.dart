import 'package:estados/pages/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/usuario_service.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      body: usuarioService.existeUsuario
          ? informacionUsuario(usuario: usuarioService.usuario)
          : const Center(
              child: Text('No hay usuario seleccionado'),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushReplacementNamed(context, 'pagina2'),
      ),
    );
  }
}

class informacionUsuario extends StatelessWidget {
  final Usuario usuario;
  const informacionUsuario({
    required this.usuario,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(title: Text('Nombre: ${usuario.nombre}')),
          ListTile(title: Text('Edad: ${usuario.nombre}')),
          const Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ...usuario.profesiones!
              .map((profesion) => ListTile(title: Text(profesion)))
              .toList()

          /*const ListTile(
            title: Text('Profesión 1: '),
          ),*/
        ],
      ),
    );
  }
}
