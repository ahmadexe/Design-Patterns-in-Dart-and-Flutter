import 'dart:convert';

import 'package:adapter_pattern/other_stuff.dart';

class Response1Adapter {
  List<Talk> getTalks() {
    final response = ApiResponse1().getResponse();
    final json = jsonDecode(response) as List;
    return json
        .map((e) => Talk(speaker: e['speaker'], topic: e['topic']))
        .toList();
  }
}

class Response2Adapter {
  List<Talk> getTalks() {
    final response = ApiResponse2().getResponse();
    final json = jsonDecode(response) as List;
    return json
        .map((e) => Talk(speaker: e['name'], topic: e['title']))
        .toList();
  }
}

class TalksRepository {
  List<Talk> getTalks() {
    final response1 = Response1Adapter().getTalks();
    final response2 = Response2Adapter().getTalks();
    return [...response1, ...response2];
  }
}
