import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsTitleContainer extends StatelessWidget {
  final String date;
  final String author;
  final String title;
  const NewsTitleContainer({
    required this.author,
    required this.date,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * (32 / 375)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
            width: MediaQuery.of(context).size.width * (311 / 375),
            height: 141.h,
            decoration:
                BoxDecoration(color: const Color(0xffF5F5F5).withOpacity(0.5)),
            child: SingleChildScrollView(
              child: SizedBox(
                height: 109.h,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        date,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                            color: const Color(0xff2E0505)),
                      ),
                      const Spacer(),
                      Expanded(
                        flex: 6,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                    color: const Color(0xff2E0505),
                                    fontFamily: "NewYorkSmall",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Published by $author",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w800,
                            fontSize: 10.sp,
                            color: const Color(0xff2E0505)),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
