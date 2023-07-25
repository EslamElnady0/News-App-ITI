import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/global_style.dart';
import '../../Screens/news_details_screen.dart';

class NewsCard extends StatelessWidget {
  final String newsImage;
  final String author;
  final String newsTitle;
  final String newsContent;
  final String date;
  final String newsDescription;
  const NewsCard({
    required this.newsImage,
    required this.author,
    required this.newsContent,
    required this.newsTitle,
    required this.date,
    required this.newsDescription,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => NewsScreenDetails(
                    description: newsDescription,
                    author: author,
                    content: newsContent,
                    image: newsImage,
                    title: newsTitle,
                    date: date,
                  )));
        },
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2955665024630542,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(newsImage))),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2955665024630542,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: greyGradient),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 64.h,
                ),
                Text(
                  "by $author",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 63.h,
                  child: Text(
                    newsTitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontFamily: "NewYorkSmall",
                        fontWeight: FontWeight.w800,
                        fontSize: 16.sp,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Text(
                  newsContent,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: Colors.white),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
