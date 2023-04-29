import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('Titulo'),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Este es un contenido de la alerta en iOS'),
            SizedBox(height: 10),
            FlutterLogo(size: 70),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar', style: TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Aceptar'),
          )
        ],
      ),
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true, // para tocar en la sombra y cerrar el modal
      context: context,
      builder: ((context) => AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            // bordes redondeados
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('este es un contenido de la alerta en Android'),
                SizedBox(height: 10),
                FlutterLogo(size: 70),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar'),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              //?? generado el style en el app_theme.dart
              //?? en caso de querer usar otro color, forma, etc...
              //?? el style de aqui sobreescribe al del app_theme.dart
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.indigo,
              //   shape: const StadiumBorder(),
              //   elevation: 0,
              // ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Text(
                  'Mostrar Alerta de iOS',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              onPressed: () => displayDialogIOS(context),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              //?? generado el style en el app_theme.dart
              //?? en caso de querer usar otro color, forma, etc...
              //?? el style de aqui sobreescribe al del app_theme.dart
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.indigo,
              //   shape: const StadiumBorder(),
              //   elevation: 0,
              // ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Text(
                  'Mostrar Alerta de Android',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              onPressed: () => displayDialogAndroid(context),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}


/*
  Podemos hacer un boton que segun la plataforma en que se corra la app.
  Debemos importar dart:io
  
  onPressed: () => Platform.isAndroid
/     ? displayDialogAndroid( context )
      : displayDialogIOS( context )
*/