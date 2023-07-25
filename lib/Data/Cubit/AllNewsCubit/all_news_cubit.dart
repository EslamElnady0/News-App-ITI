import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/Data/Models/all_news/all_news.dart';
import 'package:news_app/Data/Reopsitories/all_news_repo.dart';

part 'all_news_state.dart';

class AllNewsCubit extends Cubit<AllNewsState> {
  AllNewsCubit() : super(AllNewsLoading());
  // Future<AllNews?> data = AllNewsRepo().getAllNews();

  getAllNews(String query) {
    emit(AllNewsLoading());
    AllNewsRepo().getAllNews(query).then((value) {
      if (value != null) {
        emit(AllNewsSuccess(response: value));
      } else {
        emit(AllNewsFailed());
      }
    });
  }

  int selected = 0;
  List<String> newsCategories = [
    "All",
    "Healthy",
    "Technology",
    "Finance",
    "Arts",
    "Sports"
  ];
  String newsQuery = "All";

  void selectedCategory(int index, String query) {
    selected = index;
    newsQuery = query;

    emit(FilterBarSelected());
    getAllNews(query);
  }
}
