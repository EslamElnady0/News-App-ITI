import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/Global/global_style.dart';
import 'package:news_app/Shared/NewsDetailsWidgets/news_back_button.dart';

import '../Shared/NewsDetailsWidgets/news_details_container.dart';
import '../Shared/NewsDetailsWidgets/news_details_image.dart';
import '../Shared/NewsDetailsWidgets/news_title_container.dart';

class NewsScreenDetails extends StatelessWidget {
  final String date;
  final String title;
  final String author;
  final String content;
  final String image;
  final String description;
  const NewsScreenDetails(
      {super.key,
      required this.author,
      required this.content,
      required this.date,
      required this.title,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
            width: 60,
            height: 60,
            decoration:
                BoxDecoration(gradient: redGradient, shape: BoxShape.circle),
            child: Transform.scale(
                scale: 0.4,
                child: SvgPicture.asset("assets/images/favourite.svg"))),
      ),
      body: Stack(
        children: [
          NewsDetailsImage(image: image),
          NewsDetailsContainer(
            content: content,
            description: description,
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * (295 / 812),
              ),
              NewsTitleContainer(
                date: date,
                author: author,
                title: title,
              ),
            ],
          ),
          const NewsBackButton(),
        ],
      ),
    );
  }
}
