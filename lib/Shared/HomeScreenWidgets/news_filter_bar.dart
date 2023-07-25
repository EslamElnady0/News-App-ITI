import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Data/Cubit/AllNewsCubit/all_news_cubit.dart';
import 'package:news_app/Global/global_style.dart';

class NewsFilterBar extends StatelessWidget {
  const NewsFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllNewsCubit, AllNewsState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...context
                  .read<AllNewsCubit>()
                  .newsCategories
                  .asMap()
                  .entries
                  .map((e) {
                int index = e.key;
                String value = e.value;
                return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: () {
                        context
                            .read<AllNewsCubit>()
                            .selectedCategory(index, value);
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 16.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient:
                                context.read<AllNewsCubit>().selected == index
                                    ? redGradient
                                    : null,
                            border: context.read<AllNewsCubit>().selected ==
                                    index
                                ? Border.all(color: const Color(0xffFFB3B6))
                                : Border.all(color: const Color(0xffF0F1FA)),
                          ),
                          child: Text(
                            value,
                            style: GoogleFonts.nunito(
                                color: context.read<AllNewsCubit>().selected ==
                                        index
                                    ? Colors.white
                                    : const Color(0xff2E0505),
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp),
                          )),
                    ));
              })
            ],
          ),
        );
      },
    );
  }
}
