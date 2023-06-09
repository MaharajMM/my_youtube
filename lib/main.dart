import 'package:my_youtube/cimage.dart';
import 'package:my_youtube/src/constants/imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      //defaultTransition: Transition.leftToRightWithFade,
      //transitionDuration: const Duration(milliseconds: 700),
      home: SplashScreen(),
    );
  }
}
