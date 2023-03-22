import 'package:my_youtube/src/constants/imports.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.imageColor,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final String image, title, subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final Color? imageColor;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
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
          textAlign: textAlign,
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
