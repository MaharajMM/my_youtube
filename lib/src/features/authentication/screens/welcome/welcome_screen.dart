import 'package:google_fonts/google_fonts.dart';
import 'package:my_youtube/src/constants/imports.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var mediaQuery = MediaQuery.of(context);
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? kSecondaryColor : kPrimaryColor,
      body: Container(
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
                    onPressed: () {},
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
                    onPressed: () {},
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
    );
  }
}
