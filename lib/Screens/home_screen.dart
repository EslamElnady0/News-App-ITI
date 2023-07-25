import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Data/Cubit/AllNewsCubit/all_news_cubit.dart';
import 'package:news_app/Shared/HomeScreenWidgets/news_filter_bar.dart';

import '../Shared/HomeScreenWidgets/news_card.dart';
import '../Shared/HomeScreenWidgets/nofitication_icon.dart';
import '../Shared/HomeScreenWidgets/search_textfield.dart';
import '../Shared/HomeScreenWidgets/see_all_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String filterBarQuery = context.read<AllNewsCubit>().newsQuery;
    // Future<void> refresh() async {}

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
            SizedBox(
              height: 24.h,
            ),
            const NewsFilterBar(),
            SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: BlocBuilder<AllNewsCubit, AllNewsState>(
                builder: (context, state) {
                  if (state is AllNewsLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is AllNewsSuccess) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        var articlesData = state.response.articles![index];
                        return NewsCard(
                            date: articlesData.publishedAt!,
                            newsDescription: articlesData.description!,
                            newsImage: articlesData.urlToImage!,
                            author: articlesData.author!,
                            newsTitle: articlesData.title!,
                            newsContent: articlesData.content!);
                      },
                      itemCount: state.response.articles!.length,
                    );
                  } else {
                    return Center(
                      child: ElevatedButton(
                          onPressed: () {
                            context
                                .read<AllNewsCubit>()
                                .getAllNews(filterBarQuery);
                          },
                          child: const Text("refresh")),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
