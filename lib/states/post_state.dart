import 'package:equatable/equatable.dart';

import 'package:fire/models/post.dart';

abstract class PostState extends Equatable {
  PostState([List props = const []]) : super(props);
}

class PostUninitalized extends PostState {
  @override
  String toString() => 'post Uninitialized';
}

class PostError extends PostState {
  @override
  String toString() => 'post Error';
}

class PostLoaded extends PostState {
  final List<Post> posts;
  final bool hasReachedMax;

  PostLoaded({this.posts, this.hasReachedMax}) : super([posts, hasReachedMax]);

  PostLoaded copyWith({
    List<Post> posts,
    bool hasReachedMax,
  }){
    return PostLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax??this.hasReachedMax,
    );
  }

  @override
  String toString()=> 'PostLoaded { posts: ${posts.length}, hasReachedMax: $hasReachedMax }';
}
