import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news_app/Data/Cubit/cubit/news_search_cubit.dart';
import 'package:news_app/Shared/HomeScreenWidgets/news_search.dart';

import '../Shared/HomeScreenWidgets/no_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15, right: 16, left: 16),
        child: BlocBuilder<NewsSearchCubit, NewsSearchState>(
          builder: (context, state) {
            if (state is NewsSearchInitial) {
              return const NoSearchWidget();
            } else if (state is NewsSearchSwitched) {
              return WillPopScope(
                  onWillPop: () async {
                    context.read<NewsSearchCubit>().noSearch();
                    return false;
                  },
                  child: const NewsSearchWidget());
            } else {
              return const Center(child: Text("failed"));
            }
          },
        ),
      ),
    ));
  }
}
