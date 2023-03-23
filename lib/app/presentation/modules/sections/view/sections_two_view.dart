import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../generated/translations.g.dart';

class SectionTwoView extends HookConsumerWidget {
  const SectionTwoView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: _Fila1(),
    );
  }
}

class _Fila1 extends StatelessWidget {
  const _Fila1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.t.aboutme.aboutme),
        const SizedBox(height: 30),
        Text(context.t.aboutme.aboutmedescription,
            style: const TextStyle(fontSize: 25, color: Colors.white70),
            textAlign: TextAlign.left),
        const SizedBox(height: 50),
        Text(context.t.aboutme.skills),
        const SizedBox(height: 20),
        Wrap(
            runSpacing: 20,
            spacing: 20,
            children: skillsList
                .map((data) => Skills(
                      rutaImage: data.imagen,
                      texto: data.widget,
                      porcentaje: data.porcentaje,
                    ))
                .toList())
      ],
    );
  }
}

const styleSkills = TextStyle(fontSize: 15, color: Colors.white54);

List<SkillsModel> skillsList = [
  SkillsModel(
      widget: const Text('Flutter 71 %', style: styleSkills),
      imagen: const AssetImage('assets/images/flutter.jpg'),
      porcentaje: 68),
  SkillsModel(
      widget: const Text('Python 65 %', style: styleSkills),
      imagen: const AssetImage('assets/images/python.png'),
      porcentaje: 65),
  SkillsModel(
      widget: const Text('HTML 68 %', style: styleSkills),
      imagen: const AssetImage('assets/images/html.png'),
      porcentaje: 68),
  SkillsModel(
      widget: const Text('CSS 69 %', style: styleSkills),
      imagen: const AssetImage('assets/images/css.png'),
      porcentaje: 69),
  SkillsModel(
      widget: const Text('Arduino 73 %', style: styleSkills),
      imagen: const AssetImage('assets/images/arduino.png'),
      porcentaje: 73),
  SkillsModel(
      widget: const Text('Git 82 %', style: styleSkills),
      imagen: const AssetImage('assets/images/git.png'),
      porcentaje: 82),
];

class Skills extends StatelessWidget {
  const Skills(
      {super.key,
      required this.porcentaje,
      required this.rutaImage,
      required this.texto});
  final AssetImage rutaImage;
  final Widget texto;
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
                    image:
                        DecorationImage(image: rutaImage, fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
                width: 100,
                height: 100,
                child: RadialProgress(
                    porcentaje: porcentaje,
                    colorPrimario: Colors.green.shade100,
                    grosorSecundario: 4,
                    grosorPrimario: 8))
          ],
        ),
        const SizedBox(height: 5),
        texto,
      ],
    );
  }
}

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

  final Widget widget;
  final AssetImage imagen;
  final double porcentaje;
}
