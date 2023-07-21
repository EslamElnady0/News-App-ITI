import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Global/global_style.dart';

class NotificationIcon extends StatelessWidget {
  final String icon;
  const NotificationIcon({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.09,
      decoration: BoxDecoration(shape: BoxShape.circle, gradient: redGradient),
      child: Transform.scale(
        scale: 0.45,
        child: SvgPicture.asset(
          icon,
        ),
      ),
    );
  }
}
