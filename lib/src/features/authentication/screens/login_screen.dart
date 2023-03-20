import 'package:my_youtube/src/common_widgets/form/form_header_widget.dart';
import 'package:my_youtube/src/constants/imports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: kDefaultSize, right: 20),
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
                        onPressed: () {},
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
                  onPressed: () {},
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
    );
  }
}
