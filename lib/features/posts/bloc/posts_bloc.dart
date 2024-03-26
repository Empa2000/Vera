import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:vera/features/posts/models/post_data_ui_model.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<PostInitialFetchEvent>(postInitialFetchEvent);
  }

  FutureOr<void> postInitialFetchEvent(
      PostInitialFetchEvent event, Emitter<PostsState> emit) async {
    var client = http.Client();
    List<PostDataUiModel> posts = [];

    try {
      var response = await client
          .get(Uri.parse('http://10.0.2.2:3000/api/v1/blocksbroken'));

      List result = jsonDecode(response.body);

      print(result);

      for (int i = 0; i < result.length; i++) {
        PostDataUiModel post =
            PostDataUiModel.fromMap(result[i] as Map<String, dynamic>);
        posts.add(post);
        print(post);
      }
      print(posts);

      emit(PostFetchingSuccessfulState(posts: posts));
    } catch (err) {
      log(err.toString());
    }
  }
}
