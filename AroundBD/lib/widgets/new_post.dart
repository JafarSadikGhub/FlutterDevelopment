import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  final Function addPost;
  NewPost(this.addPost);
  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  final postTitleController = TextEditingController();
  final postTextController = TextEditingController();
  void submitData() {
    final enteredPostTitle = postTitleController.text;
    final enteredPostText = postTextController.text;
    if (enteredPostTitle.isEmpty || enteredPostText.isEmpty) {
      return;
    }
    widget.addPost(
      enteredPostTitle,
      enteredPostText,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Post Title'),
              controller: postTitleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Post Text'),
              controller: postTextController,
              onSubmitted: (_) => submitData(),
            ),
            FlatButton(
              onPressed: submitData,
              child: Text('Post'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
