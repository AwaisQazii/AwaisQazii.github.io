import 'package:flutter/material.dart';
import 'package:flutter_portfolio/main.dart';
import 'package:flutter_portfolio/view/projects/components/project_info.dart';
import 'package:get/get.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;

  ProjectGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});

  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      builder: (context, value, child) {
        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          itemCount: projectList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount, childAspectRatio: ratio),
          itemBuilder: (context, index) {
            return Obx(() => AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(
                    vertical: defaultPadding, horizontal: defaultPadding),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        colors: MyApp.of(context).notifier.value == ThemeMode.dark
                            ? [
                                Colors.pinkAccent,
                                Colors.blue,
                              ]
                            : [
                                Colors.white,
                                Colors.white,
                              ]),
                    boxShadow: MyApp.of(context).notifier.value == ThemeMode.dark
                        ? [
                            BoxShadow(
                              color: Colors.pink,
                              offset: const Offset(-2, 0),
                              blurRadius: controller.hovers[index] ? 20 : 10,
                            ),
                            BoxShadow(
                              color: Colors.blue,
                              offset: const Offset(2, 0),
                              blurRadius: controller.hovers[index] ? 20 : 10,
                            ),
                          ]
                        : [
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(-2, 0),
                              blurRadius: controller.hovers[index] ? 20 : 10,
                            ),
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(-2, 0),
                              blurRadius: controller.hovers[index] ? 20 : 10,
                            ),
                          ]),
                child: ProjectStack(index: index)));
          },
        );
      },
      valueListenable: MyApp.of(context).notifier,
    );
  }
}
