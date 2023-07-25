import 'package:flutter/material.dart';
import 'package:news_app/Shared/NewsDetailsWidgets/text_widget.dart';

class NewsDetailsContainer extends StatelessWidget {
  final String description;
  final String content;
  const NewsDetailsContainer({
    required this.content,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * (438 / 812),
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: MediaQuery.of(context).size.height * 0.1083743842364532,
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(content: description),
              TextWidget(
                content: content,
              )
            ],
          ),
        ),
      ),
    );
  }
}
