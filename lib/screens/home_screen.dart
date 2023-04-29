import 'package:flutter/material.dart';

import 'package:flutter_components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: ((context, i) => ListTile(
              title: Text(menuOptions[i].name),
              leading: Icon(
                menuOptions[i].icon,
                color: Colors.indigo,
              ),
              onTap: () {
                // UNA FORMA DE NAVEGAR
                // final route = MaterialPageRoute(
                //   builder: (context) => const Listview1Screen(),
                // );
                // Navigator.push(context, route);

                // OTRA FORMA DE NAVEGAR
                Navigator.pushNamed(context, menuOptions[i].route);
              },
            )),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
