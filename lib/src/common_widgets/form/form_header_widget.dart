import 'package:my_youtube/src/constants/imports.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // section -1
        Image(
          height: size.height * 0.2,
          image: AssetImage(image),
        ),
        Text(
          title,
          //textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          subtitle,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
