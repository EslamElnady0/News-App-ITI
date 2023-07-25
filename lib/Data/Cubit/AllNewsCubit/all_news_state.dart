part of 'all_news_cubit.dart';

@immutable
abstract class AllNewsState {}

class AllNewsLoading extends AllNewsState {}

class AllNewsSuccess extends AllNewsState {
  final AllNews response;
  AllNewsSuccess({required this.response});
}

class AllNewsFailed extends AllNewsState {}

class FilterBarSelected extends AllNewsState {}
