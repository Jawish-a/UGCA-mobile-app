import 'package:ugca_mobileapp/models/group.dart';
import 'package:ugca_mobileapp/models/user.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class Message {
  final int id;
  final String body;
  final User userId;
  final Group groupId;

  Message({this.id, this.body, this.userId, this.groupId});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'] as int,
      body: json['name'] as String,
      userId: json['userId'] as User,
      groupId: json['groupId'] as Group,
    );
  }
}
