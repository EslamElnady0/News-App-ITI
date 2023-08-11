import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/Shared/HomeScreenWidgets/search_textfield.dart';
import 'package:news_app/Shared/HomeScreenWidgets/see_all_button.dart';

import '../../Data/Cubit/AllNewsCubit/all_news_cubit.dart';
import '../../Data/Cubit/cubit/news_search_cubit.dart';
import 'bloc_news_listview.dart';
import 'news_filter_bar.dart';
import 'nofitication_icon.dart';

class NoSearchWidget extends StatelessWidget {
  const NoSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String filterBarQuery = context.read<AllNewsCubit>().newsQuery;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: SearchTextFormField(
              suffixIcon: FontAwesomeIcons.magnifyingGlass,
              onTap: () {
                context.read<NewsSearchCubit>().newsSearchSwitch();
              },
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
            child: BlocNewsListView(
          query: filterBarQuery,
        ))
      ],
    );
  }
}
