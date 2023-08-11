part of 'news_search_cubit.dart';

@immutable
sealed class NewsSearchState {}

class NewsSearchInitial extends NewsSearchState {}

class NewsSearchSwitched extends NewsSearchState {}
