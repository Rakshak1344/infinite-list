
import 'package:fire/models/post.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        post.id.toString(),
        style: TextStyle(fontSize: 10.0),
      ),
      title: Text('${post.title}'),
      isThreeLine: true,
      subtitle: Text(post.body),
      dense: true,
    );
  }
}