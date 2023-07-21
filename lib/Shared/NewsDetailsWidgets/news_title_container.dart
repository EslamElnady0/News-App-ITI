import 'dart:ui';

import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width * (311 / 375),
            height: MediaQuery.of(context).size.height * (141 / 812),
            decoration:
                BoxDecoration(color: const Color(0xffF5F5F5).withOpacity(0.5)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  date,
                  style: GoogleFonts.nunito(color: const Color(0xff2E0505)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Color(0xff2E0505),
                      fontFamily: "NewYorkSmall",
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
              Text(
                "Published by $author",
                style: GoogleFonts.nunito(
                    fontSize: 10, color: const Color(0xff2E0505)),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
