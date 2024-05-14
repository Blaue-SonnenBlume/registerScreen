/*import 'package:flutter/material.dart';


class PantallaRegistroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Correo Electrónico'),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para registrar al usuario
                // Aquí puedes validar los campos y realizar otras acciones necesarias
                // Por ahora, simplemente mostraremos un mensaje de registro exitoso
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Usuario registrado exitosamente')),
                );
              },
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}*/

/*
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Avatar extends StatefulWidget {
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  final picker = ImagePicker();
  XFile? _image;

  Future<void> _selectImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile;
    });
  }

  Future<void> _captureImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seleccionar Avatar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? Text('Ninguna imagen seleccionada')
                : _image!.path != null
                    ? Image.file(
                        File(_image!.path),
                        height: 200,
                      )
                    : Text('Error: No se pudo obtener la ruta de la imagen seleccionada'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _selectImageFromGallery,
              child: Text('Seleccionar desde la Galería'),
            ),
            ElevatedButton(
              onPressed: _captureImageFromCamera,
              child: Text('Capturar desde la Cámara'),
            ),
          ],
        ),
      ),
    );
  }
}

class PantallaRegistroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Correo Electrónico'),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para registrar al usuario
                // Aquí puedes validar los campos y realizar otras acciones necesarias
                // Por ahora, simplemente mostraremos un mensaje de registro exitoso
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Usuario registrado exitosamente')),
                );
              },
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Avatar(),
  ));
}
*/

/*
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PantallaRegistroUsuario extends StatefulWidget {
  @override
  _PantallaRegistroUsuarioState createState() => _PantallaRegistroUsuarioState();
}

class _PantallaRegistroUsuarioState extends State<PantallaRegistroUsuario> {
  final picker = ImagePicker();
  XFile? _image;

  Future<void> _selectImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile;
    });
  }

  Future<void> _captureImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _image == null
                      ? Text('Ninguna imagen seleccionada')
                      : _image!.path != null
                          ? Image.file(
                              File(_image!.path),
                              height: 200,
                            )
                          : Text('Error: No se pudo obtener la ruta de la imagen seleccionada'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _selectImageFromGallery,
                    child: Text('Seleccionar desde la Galería'),
                  ),
                  ElevatedButton(
                    onPressed: _captureImageFromCamera,
                    child: Text('Capturar desde la Cámara'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Correo Electrónico'),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para registrar al usuario
                // Aquí puedes validar los campos y realizar otras acciones necesarias
                // Por ahora, simplemente mostraremos un mensaje de registro exitoso
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Usuario registrado exitosamente')),
                );
              },
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PantallaRegistroUsuario(),
  ));
}*/


import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PantallaRegistroUsuario extends StatefulWidget {
  @override
  _PantallaRegistroUsuarioState createState() => _PantallaRegistroUsuarioState();
}

class _PantallaRegistroUsuarioState extends State<PantallaRegistroUsuario> {
  final picker = ImagePicker();
  XFile? _image;

  Future<void> _selectImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile;
    });
  }

  Future<void> _captureImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elmo.jpg'), // Reemplaza con la ruta de tu imagen
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _image == null
                        ? Text('Ninguna imagen seleccionada')
                        : _image!.path != null
                            ? Image.file(
                                File(_image!.path),
                                height: 200,
                              )
                            : Text('Error: No se pudo obtener la ruta de la imagen seleccionada'),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _selectImageFromGallery,
                      child: Text('Seleccionar desde la Galería'),
                    ),
                    ElevatedButton(
                      onPressed: _captureImageFromCamera,
                      child: Text('Capturar desde la Cámara'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre'),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                decoration: InputDecoration(labelText: 'Correo Electrónico'),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // Lógica para registrar al usuario
                  // Aquí puedes validar los campos y realizar otras acciones necesarias
                  // Por ahora, simplemente mostraremos un mensaje de registro exitoso
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Usuario registrado exitosamente')),
                  );
                },
                child: Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PantallaRegistroUsuario(),
  ));
}

