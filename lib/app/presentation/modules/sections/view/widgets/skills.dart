import 'package:flutter/material.dart';

import 'progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
    required this.porcentaje,
    required this.rutaImage,
    required this.texto,
  });
  final String rutaImage;
  final String texto;
  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(100),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(rutaImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: RadialProgress(
                  porcentaje: porcentaje,
                  colorPrimario: Colors.green.shade100,
                  grosorSecundario: 4,
                  grosorPrimario: 8),
            )
          ],
        ),
        const SizedBox(height: 5),
        Text(texto),
      ],
    );
  }
}
