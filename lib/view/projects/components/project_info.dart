import 'package:flutter/material.dart';
import 'package:flutter_portfolio/main.dart';
import 'package:flutter_portfolio/view/projects/components/project_deatail.dart';
import 'package:get/get.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';
import 'image_viewer.dart';

class ProjectStack extends StatefulWidget {
  const ProjectStack({super.key, required this.index});

  final int index;

  @override
  State<ProjectStack> createState() => _ProjectStackState();
}

class _ProjectStackState extends State<ProjectStack> {
  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(widget.index, value);
      },
      onTap: () {
        ImageViewer(context, projectList[widget.index].image);
      },
      borderRadius: BorderRadius.circular(30),
      child: ValueListenableBuilder<ThemeMode>(
        builder: (context, value, child) {
          return AnimatedContainer(
            padding: const EdgeInsets.only(
                left: defaultPadding, right: defaultPadding, top: defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: MyApp.of(context).notifier.value == ThemeMode.light
                  ? Colors.white70
                  : Colors.black,
            ),
            duration: const Duration(milliseconds: 500),
            child: ProjectDetail(
              index: widget.index,
            ),
          );
        },
        valueListenable: MyApp.of(context).notifier,
      ),
    );
  }
}
