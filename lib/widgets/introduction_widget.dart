import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        30.heightBox,
        'A developer with a passion for analyzing complex problems, finding patterns in them and building solutions to solve them. \n\n I also love math and teach in my free time. \n\n Oh, and I play the violin and am an active part of my band, Caramel Chutney.'
            .text
            .white
            .xl
            .wrapWords(true)
            .make()
            .box
            .width(context.screenWidth <= 960
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width * 0.32)
            .make(),
        60.heightBox,
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
