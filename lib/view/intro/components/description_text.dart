import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText({super.key, required this.start, required this.end});

  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).textTheme.bodyMedium?.color;
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  style: TextStyle(color: primary),
                  text:
                      'Experienced Mobile Development Specialist and ${Responsive.isMobile(context) ? '\n' : ''}Software Engineer adept in Flutter with a${Responsive.isDesktop(context) || Responsive.isMobile(context) ? '\n' : ''}proven track record of delivering innovative ${Responsive.isLargeMobile(context) || Responsive.isMobile(context) ? '\n' : ''}mobile solutions.\nFounder of '),
              TextSpan(
                  style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                  text: 'MobilePulse',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showMobilePulseDialog(context)),
              TextSpan(
                  style: TextStyle(color: primary),
                  text:
                      ', dedicated to crafting${Responsive.isLargeMobile(context) || Responsive.isMobile(context) ? '\n' : ''}user-centric applications${Responsive.isDesktop(context) || Responsive.isMobile(context) ? '\n' : ''}that drive engagement and enhanceuser experiences.')
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> showMobilePulseDialog(BuildContext context) {
    return showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/image.png',
                  height: 200,
                  width: 300,
                ),
                const Text(
                  'Welcome to Mobile Pulse, your premier destination for cutting-edge mobile app solutions. As a dynamic startup, we specialize in crafting bespoke mobile applications tailored to your unique needs. With a passionate team of developers and designers, we\'re committed to delivering innovative solutions that propel your business forward in the digital landscape. (We\'re coming soon)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
