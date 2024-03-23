// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'posts_bloc.dart';

@immutable
sealed class PostsState {}

final class PostsInitial extends PostsState {}

class PostFetchingSuccessfulState extends PostsState {
  final List<PostDataUiModel> posts;
  PostFetchingSuccessfulState({
    required this.posts,
  });
}
