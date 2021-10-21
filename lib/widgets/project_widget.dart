import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectWidget extends StatelessWidget {
  final String projectName;
  final double squareSize;

  const ProjectWidget({
    required this.projectName,
    this.squareSize = 220,
  });

  get primaryColor => null;

  @override
  Widget build(BuildContext context) {
    return projectName.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(squareSize)
        .neumorphic(color: Colors.green, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
