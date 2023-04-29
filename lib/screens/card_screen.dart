import 'package:flutter/material.dart';
import 'package:flutter_components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Una hermosa ola en Hawaii',
            imageUrl:
                'https://bigwalldecor.com/wp-content/uploads/2021/11/Tropcal-Hawaii-Sunset-Wave-Landscape-Wall-Art.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'A las orillas de Waimea Bay',
            imageUrl:
                'https://bigwalldecor.com/wp-content/uploads/2021/11/Tropical-Hawaii-Wave-Landscape-Wall-Art.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            // name: 'Atardecer en Shark Beach',
            imageUrl:
                'https://bigwalldecor.com/wp-content/uploads/2021/11/Sunset-Oahu-Hawaii-Landscape-Wall-Art.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Vista aerea de Hawaii',
            imageUrl:
                'https://bigwalldecor.com/wp-content/uploads/2021/11/Aerial-Hawaii-Mountain-Landscape-Wall-Art.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Surf tube ride',
            imageUrl:
                'https://bigwalldecor.com/wp-content/uploads/2021/11/Hawaii-Sunrise-Wave-Landscape-Wall-Art.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'A wave closing up',
            imageUrl:
                'https://bigwalldecor.com/wp-content/uploads/2021/11/Waimea-Bay-Hawaii-Wave-Landscape-Wall-Art.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Atardecer en el faro',
            imageUrl:
                'https://bigwalldecor.com/wp-content/uploads/2021/11/Portland-Maine-Lighthouse-Sunrise-Landscape-Wall-Art.jpg',
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
