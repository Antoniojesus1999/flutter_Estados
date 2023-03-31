import 'package:estados/pages/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioService with ChangeNotifier {
  late Usuario? _usuario = null;

  Usuario get usuario => _usuario!;
  bool get existeUsuario => _usuario?.nombre != null ? true : false;

  set usuario(Usuario user) {
    _usuario = user;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    _usuario!.edad = edad;
    notifyListeners();
  }

  void removeUsuario() {
    _usuario = null;
    notifyListeners();
  }

  void agregarProfesion() {
    _usuario?.profesiones!.add('Profesion Profesion 88 }');
    notifyListeners();
  }
}
