import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/global_style.dart';
import '../../Screens/news_details_screen.dart';

class NewsCard extends StatelessWidget {
  final String newsImage;
  final String author;
  final String newsTitle;
  final String newsContent;
  const NewsCard({
    required this.newsImage,
    required this.author,
    required this.newsContent,
    required this.newsTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const NewsScreenDetails()));
        },
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2955665024630542,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(newsImage))),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2955665024630542,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: greyGradient),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height:
                      MediaQuery.of(context).size.height * 0.0985221674876847,
                ),
                Text(
                  "by $author",
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  newsTitle,
                  style: const TextStyle(
                      fontFamily: "NewYorkSmall",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
                SizedBox(
                  height:
                      MediaQuery.of(context).size.height * 0.0381773399014778,
                ),
                Text(
                  newsContent,
                  style: GoogleFonts.nunito(fontSize: 10, color: Colors.white),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
