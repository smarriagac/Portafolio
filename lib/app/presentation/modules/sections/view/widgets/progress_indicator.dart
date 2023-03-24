import 'dart:math';

import 'package:flutter/material.dart';

class RadialProgress extends StatelessWidget {
  const RadialProgress({
    super.key,
    required this.porcentaje,
    this.colorPrimario = Colors.blue,
    this.colorSecundario = Colors.grey,
    this.grosorSecundario = 5.0,
    this.grosorPrimario = 10.0,
  });

  final double porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorPrimario;
  final double grosorSecundario;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _MiRadialProgress(porcentaje, colorPrimario, colorSecundario,
            grosorSecundario, grosorPrimario),
      ),
    );
  }
}

class _MiRadialProgress extends CustomPainter {
  _MiRadialProgress(this.porcentaje, this.colorPrimario, this.colorSecundario,
      this.grosorSecundario, this.grosorPrimario);

  final double porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorSecundario;
  final double grosorPrimario;

  @override
  void paint(Canvas canvas, Size size) {
    // circulo completado
    final paint = Paint()
      ..strokeWidth = grosorSecundario
      ..color = colorSecundario
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width * 0.5, size.height / 2);
    double radio = min(size.width * 0.5, size.height / 2);

    canvas.drawCircle(center, radio, paint);

    // arco
    final paintArco = Paint()
      ..strokeWidth = grosorPrimario
      ..color = colorPrimario
      //..shader      = gradiente.createShader(rect)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    // parte que se debera ir llenando

    double arcAngle = 2 * pi * (porcentaje / 100);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radio), -pi / 2,
        arcAngle, false, paintArco);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class SkillsModel {
  SkillsModel({
    required this.porcentaje,
    required this.widget,
    required this.imagen,
  });

  final String widget;
  final String imagen;
  final double porcentaje;
}
