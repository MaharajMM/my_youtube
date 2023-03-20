import 'package:my_youtube/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:my_youtube/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:my_youtube/src/constants/imports.dart';
import 'package:my_youtube/src/features/authentication/screens/login_screen.dart';
import 'package:my_youtube/src/features/authentication/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var mediaQuery = MediaQuery.of(context);

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? kSecondaryColor : kPrimaryColor,
      body: Stack(
        children: [
          KFadeInAnimation(
            durationInMS: 1200,
            animatePosition: KAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Image(
                    image: AssetImage(
                      kWelcomeScreenImage,
                    ),
                    //height: getDeviceHeight(550),
                  ),
                  Column(
                    children: [
                      Text(
                        kWelcomeTitle,
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHeight(10),
                      ),
                      Text(
                        kWelcomeSubTitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,

                            //color: Color(0xFF767676),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          child: Text(
                            'Login'.toUpperCase(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getDeviceWidth(10),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => const SignUpScreen()),
                          child: Text(
                            'SignUp'.toUpperCase(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
