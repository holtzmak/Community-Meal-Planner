import 'package:flutter/cupertino.dart';

@immutable
class Post {
  final String id; // Firebase Firestore ID
  final String authorName;
  final String authorId;
  final String message;
  final DateTime postDate;

  Post(
      {required this.id,
      required this.authorName,
      required this.authorId,
      required this.message,
      required this.postDate});

  Post.empty(String id)
      : id = id,
        authorName = "",
        authorId = "",
        message = "",
        postDate = DateTime.now();

  // Optional ID for completion posts, which cannot be modified
  Post.fromJson({String? id, required Map<String, dynamic> json})
      : id = id ?? "",
        authorName = json['authorName'],
        authorId = json['authorId'],
        message = json['message'],
        postDate = json['postDate'].toDate();

  Map<String, dynamic> toJson() => {
        'authorName': authorName,
        'authorId': authorId,
        'message': message,
        'postDate': postDate
      };

  @override
  int get hashCode =>
      id.hashCode ^
      authorName.hashCode ^
      authorId.hashCode ^
      message.hashCode ^
      postDate.hashCode;

  @override
  bool operator ==(other) {
    return (other is Post) &&
        other.id == id &&
        other.authorName == authorName &&
        other.authorId == authorId &&
        other.message == message &&
        other.postDate == postDate;
  }

  String toString() =>
      'Post(id: $id, authorName: $authorName, authorId: $authorId, message: $message, postDate: $postDate)';

  Post withDocumentId(String newId) => Post(
      id: newId,
      authorName: authorName,
      authorId: authorId,
      message: message,
      postDate: postDate);

  Post withMessage(String newMessage) => Post(
      id: id,
      authorName: authorName,
      authorId: authorId,
      message: newMessage,
      postDate: postDate);
}
