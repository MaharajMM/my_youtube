import 'package:my_youtube/src/common_widgets/form/form_header_widget.dart';
import 'package:my_youtube/src/constants/imports.dart';
import 'package:my_youtube/src/features/authentication/screens/forgot_password/forgot_password_mail_screen.dart';
import 'package:my_youtube/src/features/authentication/screens/forgot_password/forgot_password_phone_screen.dart';
import 'package:my_youtube/src/features/authentication/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(left: 20, top: kDefaultSize, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // section -1
              const FormHeaderWidget(
                image: kWelcomeScreenImage,
                title: kLoginTitle,
                subtitle: kLoginSubTitle,
              ),

              // section -2
              Form(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline_outlined,
                          ),
                          labelText: 'Email',
                          hintText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHeight(15),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.fingerprint,
                          ),
                          labelText: 'Password',
                          hintText: 'Password',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: getDeviceHeight(5),
                      // ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            forgotPasswordBottomSheet(context);
                          },
                          child: const Text('Forget Password?'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Submit'.toUpperCase(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // section -3
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('OR'),
                  SizedBox(
                    height: getDeviceHeight(20),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(
                          kLoginScreenImage,
                        ),
                        height: 20,
                      ),
                      label: const Text('Sign-in with Google'),
                    ),
                  ),
                  SizedBox(
                    height: getDeviceHeight(10),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Get.to(() => const SignUpScreen());
                    },
                    child: Text.rich(
                      TextSpan(
                        text: kDontHave,
                        style: Theme.of(context).textTheme.bodySmall,
                        children: const [
                          TextSpan(
                            text: 'SignUp',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> forgotPasswordBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kForgetPasswordTitle,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              kForgetPasswordSubTitle,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: getDeviceHeight(30),
            ),
            ForgotPasswordBtnWidget(
              iconData: Icons.mail_outline_rounded,
              title: 'E-Mail',
              subTitle: kForgetPasswordTitle,
              onTap: () {
                Navigator.pop(context);
                Get.to(
                  () => const ForgotPasswordMailScreen(),
                );
              },
            ),
            SizedBox(
              height: getDeviceHeight(10),
            ),
            ForgotPasswordBtnWidget(
              iconData: Icons.mobile_friendly_rounded,
              title: 'Phone No.',
              subTitle: kResetViaPhone,
              onTap: () {
                Navigator.pop(context);
                Get.to(
                  () => const ForgotPasswordPhoneScreen(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordBtnWidget extends StatelessWidget {
  const ForgotPasswordBtnWidget({
    super.key,
    required this.iconData,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  final IconData iconData;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              size: getDeviceHeight(60),
            ),
            SizedBox(
              width: getDeviceWidth(10),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  subTitle,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
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
