import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/post.dart';

class PostList extends StatelessWidget {
  final List<Post> posts;
  PostList(this.posts);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: posts.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'Such an empty thread!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('DP'),
                        ),
                      ),
                    ),
                    title: Text(
                      posts[index].postTitle,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      posts[index].postText,
                      
                    ),
                  ),
                );
              },
              itemCount: posts.length,
            ),
    );
  }
}
