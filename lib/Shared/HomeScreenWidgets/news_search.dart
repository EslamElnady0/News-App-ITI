import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Data/Cubit/AllNewsCubit/all_news_cubit.dart';
import 'package:news_app/Shared/HomeScreenWidgets/bloc_news_listview.dart';
import 'package:news_app/Shared/HomeScreenWidgets/search_textfield.dart';

class NewsSearchWidget extends StatefulWidget {
  const NewsSearchWidget({super.key});

  @override
  State<NewsSearchWidget> createState() => _NewsSearchWidgetState();
}

class _NewsSearchWidgetState extends State<NewsSearchWidget> {
  final FocusNode _searchFocusNode = FocusNode();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchFocusNode.requestFocus();
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTextFormField(
            focusNode: _searchFocusNode,
            onSuffixPressed: () {
              _searchController.clear();
              _searchFocusNode.unfocus();
            },
            controller: _searchController,
            onFieldSubmitted: (value) {
              _searchController.text = value;
              context.read<AllNewsCubit>().getAllNews(_searchController.text);
            },
            suffixIcon: Icons.clear,
            hintText: "Search for a specific thing.."),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
            child: BlocNewsListView(
          query: _searchController.text,
        ))
      ],
    );
  }
}
