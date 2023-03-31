import 'package:estados/pages/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;

  Usuario? get usuario => this._usuario;
  set usuario(Usuario? user) {
    _usuario = user;
    notifyListeners();
  }

  bool get existeUsuario => (_usuario != null) ? true : false;

  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
    notifyListeners();
  }

  void removerUsuario() {
    _usuario = null;
    notifyListeners();
  }

  void agregarProfesion() {
    _usuario?.profesiones?.add('Profesion manporrero');
    notifyListeners();
  }
}
