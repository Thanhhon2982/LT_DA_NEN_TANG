import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAnsIcons extends StatelessWidget {
  const ImageAnsIcons({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 1.1,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding ,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/sun.svg"),
                    const IconCard(icon: "assets/icons/icon_2.svg"),
                    const IconCard(icon: "assets/icons/icon_3.svg"),
                    const IconCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63.0),
                  bottomLeft: Radius.circular(63.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.topLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
