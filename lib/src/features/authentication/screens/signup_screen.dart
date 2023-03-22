import 'package:my_youtube/src/common_widgets/form/form_header_widget.dart';
import 'package:my_youtube/src/constants/imports.dart';
import 'package:my_youtube/src/features/authentication/screens/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                subtitle: kSignUpSubTitle,
                title: kSignUpTitle,
              ),

              //section-2
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(
                            'Full Name',
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline_rounded,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHeight(10),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(
                            'Email',
                          ),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHeight(10),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(
                            'Phone no.',
                          ),
                          prefixIcon: Icon(
                            Icons.numbers,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHeight(10),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.fingerprint,
                          ),
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHeight(20),
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

              //section-3
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('OR'),
                  SizedBox(
                    height: getDeviceHeight(10),
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
                  // SizedBox(
                  //   height: getDeviceHeight(10),
                  // ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Get.to(() => const LoginScreen());
                    },
                    child: Text.rich(
                      TextSpan(
                        text: kAlreadyHave,
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          TextSpan(
                            text: 'Login'.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
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
}
