import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/translations.g.dart';
import '../../../global/app_color.dart';
import '../../../global/extension/build_context_ext.dart';
import 'widgets/progress_indicator.dart';
import 'widgets/skills.dart';

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
        Text(
          context.t.aboutme.aboutme,
          style: context.textTheme.bodyLarge!.copyWith(
            color: AppColors.secondaryColor,
            fontSize: 32,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          context.t.aboutme.aboutmedescription,
          style: const TextStyle(fontSize: 25, color: Colors.white70),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 50),
        Text(
          context.t.aboutme.skills,
          style: context.textTheme.bodyLarge!.copyWith(
            color: AppColors.secondaryColor,
            fontSize: 32,
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          runSpacing: 20,
          spacing: 20,
          children: skillsList
              .map(
                (data) => Skills(
                  rutaImage: data.imagen,
                  texto: data.widget,
                  porcentaje: data.porcentaje,
                ),
              )
              .toList(),
        )
      ],
    );
  }
}

List<SkillsModel> skillsList = [
  SkillsModel(
      widget: 'Flutter 71 %',
      imagen: Assets.images.flutter.path,
      porcentaje: 68),
  SkillsModel(
    widget: 'Python 65 %',
    imagen: Assets.images.python.path,
    porcentaje: 65,
  ),
  SkillsModel(
    widget: 'HTML 68 %',
    imagen: Assets.images.html.path,
    porcentaje: 68,
  ),
  SkillsModel(
    widget: 'CSS 69 %',
    imagen: Assets.images.css.path,
    porcentaje: 69,
  ),
  SkillsModel(
    widget: 'Arduino 73 %',
    imagen: Assets.images.arduino.path,
    porcentaje: 73,
  ),
  SkillsModel(
    widget: 'Git 82 %',
    imagen: Assets.images.git.path,
    porcentaje: 82,
  ),
];
