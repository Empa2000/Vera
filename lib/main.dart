import 'package:flutter/material.dart';
import 'package:vera/features/posts/ui/posts_page.dart';

void main() async {
  runApp(new Vera());
}

class Vera extends StatelessWidget {
  const Vera({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostsPage(),
    );
  }
}
/*  'http://10.0.2.2:3000'; //10.0.2.2 is what android emulator has to use to connect to localhost
  final response =
    await http.get(Uri.parse('$serverUrl/api/v1/blocksbroken')); */