import 'package:flutter/material.dart';

import 'presentation/global/theme/theme.dart';
import 'presentation/routes/app_routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with RouterMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portafolio',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: getTheme(true),
    );
  }
}
