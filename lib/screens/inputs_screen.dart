import 'package:flutter/material.dart';
import 'package:flutter_components_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Francisco',
      'last_name': 'Aldado',
      'email': 'faldado@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del Usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del Usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Email',
                    hintText: 'Email del Usuario',
                    textEmail: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del Usuario',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField(
                      value: 'Admin',
                      items: const [
                        DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                        DropdownMenuItem(
                            value: 'Visitor', child: Text('Visitor')),
                        DropdownMenuItem(value: 'User', child: Text('User')),
                        DropdownMenuItem(
                            value: 'Author', child: Text('Author')),
                        DropdownMenuItem(
                            value: 'Moderator', child: Text('Moderator')),
                      ],
                      onChanged: (value) {
                        print(value);
                        formValues['role'] = value ?? 'Admin';
                      }),
                  ElevatedButton(
                    onPressed: () {
                      //?? La línea de código FocusScope.of(context).requestFocus(FocusNode()); es utilizada para remover el foco de un campo de entrada de texto en Flutter. Quita el teclado.
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido !');
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
