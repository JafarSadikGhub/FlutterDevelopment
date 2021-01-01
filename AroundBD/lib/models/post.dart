import 'package:flutter/material.dart';

class Post {
  String uID;
  String uName;
  String postTitle;
  String postText;
  DateTime date;

  Post({
    @required this.uID,
    @required this.uName,
    @required this.postTitle,
    @required this.postText,
    @required this.date,
  });
}
