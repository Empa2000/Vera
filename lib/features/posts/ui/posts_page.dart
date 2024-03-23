import 'package:flutter/material.dart';
import 'package:vera/features/posts/bloc/posts_bloc.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  final PostsBloc postsBloc = PostsBloc();

  @override
  void initState() {
    postsBloc.add(PostInitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
    );
  }
}
