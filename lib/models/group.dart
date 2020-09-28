import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

// A function that converts a response body into a List<Group>.
Future<List<Group>> fetchGroups(http.Client client) async {
  final response =
      await client.get('http://10.0.2.2:8000/api/v1/group/', headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer pdOpd5vwiTZtDFLCdFmEaBf9gAekTZLiHtSRXXEUct8QbAq4rm80POOduwQ3FJPIEukhdXvmWG016u5B'
        });

  // Use the compute function to run parseGroups in a separate isolate.
  return compute(parseGroups, response.body);
}

List<Group> parseGroups(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Group>((json) => Group.fromJson(json)).toList();
}

class Group {
  final int id;
  final String name;
  final String description;

  Group({this.id, this.name, this.description});

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
    );
  }
}
