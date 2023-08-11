import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'news_search_state.dart';

class NewsSearchCubit extends Cubit<NewsSearchState> {
  NewsSearchCubit() : super(NewsSearchInitial());

  void newsSearchSwitch() {
    emit(NewsSearchSwitched());
  }

  void noSearch() {
    emit(NewsSearchInitial());
  }
}
