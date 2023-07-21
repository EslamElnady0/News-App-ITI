import 'package:flutter/material.dart';

import '../Shared/HomeScreenWidgets/news_card.dart';
import '../Shared/HomeScreenWidgets/nofitication_icon.dart';
import '../Shared/HomeScreenWidgets/search_textfield.dart';
import '../Shared/HomeScreenWidgets/see_all_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15, right: 16, left: 16),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                    child: SearchTextFormField(
                  hintText: "Dogecoin to the Moon...",
                )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.0426666666666667,
                ),
                const NotificationIcon(
                  icon: "assets/images/Group 38.svg",
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0295566502463054,
            ),
            const Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Latest News",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "NewYorkSmall",
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Spacer(),
                SeeAllButton()
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const NewsCard(
                    newsImage: "assets/images/Rectangle 60.png",
                    author: "Ryan Browne",
                    newsTitle:
                        "Crypto investors should be prepared to lose all their money, BOE governor says",
                    newsContent:
                        "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                  );
                },
                itemCount: 5,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
