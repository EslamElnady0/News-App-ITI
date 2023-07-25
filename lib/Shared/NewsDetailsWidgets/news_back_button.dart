import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewsBackButton extends StatelessWidget {
  const NewsBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * (52 / 812),
            horizontal: 15),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
              child: Container(
                  padding: const EdgeInsets.all(12),
                  width: 35.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5).withOpacity(0.5)),
                  child: Transform.scale(
                      scale: 1.5,
                      child: SvgPicture.asset("assets/images/VectorBack.svg"))),
            ),
          ),
        ),
      ),
    );
  }
}
