import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/usuario/usuario_cubit.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      body: BlocBuilder<UsuarioCubit, UsuarioState>(builder: (_, state) {
        print(state);
        if (state is UsuarioInitial) {
          return const Center(
            child: Text('No hay información del usuario'),
          );
        } else {
          return const informacionUsuario();
        }
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushReplacementNamed(context, 'pagina2'),
      ),
    );
  }
}

class informacionUsuario extends StatelessWidget {
  const informacionUsuario({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(title: Text('Nombre: ')),
          ListTile(title: Text('Edad: ')),
          Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(
            title: Text('Profesión 1'),
          ),
          ListTile(
            title: Text('Profesión 2'),
          ),
          ListTile(
            title: Text('Profesión 3'),
          ),
        ],
      ),
    );
  }
}
