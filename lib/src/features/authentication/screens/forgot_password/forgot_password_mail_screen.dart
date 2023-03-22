import 'package:my_youtube/src/common_widgets/form/form_header_widget.dart';
import 'package:my_youtube/src/constants/imports.dart';
import 'package:my_youtube/src/features/authentication/screens/forgot_password/otp_screen.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: kDefaultSize * 3,
              ),
              const FormHeaderWidget(
                image: kForgotPasswordImage,
                title: kForgotPassword,
                subtitle: kForgetPasswordSubTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getDeviceHeight(20),
              ),
              Form(
                child: Column(
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
                      height: getDeviceHeight(20),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(
                            () => const OtpScreen(),
                          );
                        },
                        child: Text(
                          'Next'.toUpperCase(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
