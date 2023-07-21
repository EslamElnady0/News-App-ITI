import 'package:flutter/material.dart';
import 'package:news_app/Shared/NewsDetailsWidgets/news_back_button.dart';

import '../Shared/NewsDetailsWidgets/news_details_container.dart';
import '../Shared/NewsDetailsWidgets/news_details_image.dart';
import '../Shared/NewsDetailsWidgets/news_title_container.dart';

class NewsScreenDetails extends StatelessWidget {
  const NewsScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const NewsDetailsImage(image: "assets/images/man1.png"),
          const NewsDetailsContainer(),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * (295 / 812),
              ),
              const NewsTitleContainer(
                date: "Sunday, 9 May 2021",
                author: "Ryan Browne",
                title:
                    "Crypto investors should be prepared to lose all their money, BOE governor says",
              ),
            ],
          ),
          const NewsBackButton(),
        ],
      ),
    );
  }
}
