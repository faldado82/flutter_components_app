import 'package:flutter/material.dart';
import 'package:flutter_components_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 300;
  bool _checkboxEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          // Slider.adaptive() para que se adapta a la visual de android o la de iOS
          Slider(
              min: 0,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _checkboxEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Habilitar checkbox para modificar tamaño:'),
                Checkbox(
                    value: _checkboxEnabled,
                    onChanged: (value) {
                      setState(() {
                        _checkboxEnabled = value ?? false;
                      });
                    }),
                ////! Por alguna razon no funciona ===
                // CheckboxListTile(
                //   title:
                //       const Text('Habilitar checkbox:'),
                //   value: _checkboxEnabled,
                //   onChanged: (value) => setState(() {
                //     _checkboxEnabled = value ?? false;
                //   }),
                // ),
                ////! Fin CheckboxListTile =====
                Switch(
                  value: _checkboxEnabled,
                  onChanged: (value) => setState(() {
                    _checkboxEnabled = value;
                  }),
                ),
                
                ////! Por alguna razon no funciona ===
                // SwitchListTile(
                //   title: const Text('Habilitar checkbox:'),
                //   value: _checkboxEnabled,
                //   onChanged: (value) => setState(() {
                //     _checkboxEnabled = value;
                //   }),
                // )
                ////! Fin SwitchListTile =====
                //
                //
                ////! AboutListTile() no funciona ===
                // const AboutListTile(),
                ////! Fin SwitchListTile =====
              ],
            ),
          ),

          //?? Expanded, expande al widget en su eje principal
          //?? aqui le pido que se expanda la columna lo maximo
          //?? posible, segun el contenido que haya en este widget
          //?? si no tuvieramos expanded, ocurriria un desbordamiento
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'http://pngimg.com/uploads/batman/batman_PNG84.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
