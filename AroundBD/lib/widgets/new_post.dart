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
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  minLines: 10,
                  maxLines: 15,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Write your status here',
                    filled: true,
                    fillColor: Color(0xFFDBEDFF),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  controller: postTextController,
                  onSubmitted: (_) => submitData(),
                ),
              ),
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
