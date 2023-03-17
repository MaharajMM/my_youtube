import '../../../../constants/imports.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  bool animate = false;
  @override
  // void initState() {
  //   startAnimation();
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 80,
                left: splashController.animate.value ? kDefaultSize : -80,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: const Text(
                    kAppTagLine,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kDarkColor,
                    ),
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 300 : 0,
              left: 100,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: SizedBox(
                  height: getDeviceHeight(250),
                  child: const Image(
                    image: AssetImage(
                      kSplashImage2,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 2000),
              bottom: splashController.animate.value ? 100 : 0,
              right: kDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: kSplashContainerSize,
                  height: kSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
