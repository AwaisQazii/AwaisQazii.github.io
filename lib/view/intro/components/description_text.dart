import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:get/get.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experienced Mobile Development Specialist and Software Engineer${Responsive.isMobile(context) ? '\n' : ' '}adept in Flutter\nwith a proven track record of delivering innovative mobile solutions.\nOwner of MobilePulse, dedicated to crafting user-centric \napplications that drive engagement and enhance user experiences.',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey, wordSpacing: 2, fontSize: value),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  showAdaptiveDialog(
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
                },
                child: AnimatedSubtitleText(
                    start: start, end: end, text: 'MobilePulse')),
          ],
        );
      },
    );
  }
}
