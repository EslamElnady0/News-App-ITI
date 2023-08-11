import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/Cubit/AllNewsCubit/all_news_cubit.dart';
import 'news_card.dart';

class BlocNewsListView extends StatelessWidget {
  final String query;
  const BlocNewsListView({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllNewsCubit, AllNewsState>(
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
                  context.read<AllNewsCubit>().getAllNews(query);
                },
                child: const Text("refresh")),
          );
        }
      },
    );
  }
}
